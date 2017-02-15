using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApplication2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    /// 
    using FearTheCowboy.Iso19770;
    using FearTheCowboy.Iso19770.Schema;
    using SoftwareIdentity = FearTheCowboy.Iso19770.SoftwareIdentity;



    public partial class MainWindow : Window
    {

        public MainWindow()
        {
            InitializeComponent();
        }
        private void saveTag_Click(object sender, RoutedEventArgs e)
        {
            var swidTag = new SoftwareIdentity();

            swidTag.AddMeta().Generator = "TagVault.org Tag Creator";

            swidTag.Name = tb_prdName.Text;
            swidTag.Version = tb_version.Text;
            swidTag.VersionScheme = cb_versionScheme.Text;
            swidTag.TagId = tb_tagId.Text;
            swidTag.AddMeta().Edition = tb_edition.Text;

            string tagToWrite = "";

            //
            // Setup the roles that have been selected by the user
            //

            string roles = "";
            
            if ((bool)tbtn_tagCreator.IsChecked)
                roles = "tagcreator";
            if ((bool)tbtn_softwareCreator.IsChecked)
                roles = roles + " softwarecreator";
            if ((bool)tbtn_licensor.IsChecked)
                roles = roles + " licensor";


            if (lb_roles.SelectedItems.Count >0)
                foreach (System.Windows.Controls.ListBoxItem item in lb_roles.SelectedItems)
                {
                    roles = roles + " " +  item.Content.ToString();
                }




            swidTag.AddEntity(tb_entityName.Text, tb_entityRegid.Text, roles);


            //
            // Tmp fix for incorrect attribute name
            // 
            //System.IO.File.WriteAllText("c:\\tmp\\test1.xml", swidTag.SwidTagXml.Replace("regId", "regid");

            tagToWrite = swidTag.SwidTagXml.Replace("regId", "regid");
            tagToWrite = tagToWrite.Replace("p2:role", "role");
            tagToWrite = tagToWrite.Replace(" xmlns:p2=\"http://standards.iso.org/iso/19770/-2/2015/schema.xsd\" ", " ");

            //
            // End of Tmp fix
            //
            System.IO.File.WriteAllText("c:\\tmp\\test1.xml", tagToWrite);

        }

        private void btnCreateGUID_Click(object sender, RoutedEventArgs e)
        {
            tb_tagId.Text = Guid.NewGuid().ToString();
        }

        private void btnFileOpen_Click(object sender, RoutedEventArgs e)
        {
            // Create OpenFileDialog 
            Microsoft.Win32.OpenFileDialog dlg = new Microsoft.Win32.OpenFileDialog();

            // Set filter for file extension and default file extension 
            dlg.DefaultExt = ".swidtag";
            dlg.Filter = "SWID Tag Files (*.swidtag)|*.swidtag |All Files (*.*)|*.*";

            // Display OpenFileDialog by calling ShowDialog method 
            Nullable<bool> result = dlg.ShowDialog();

            // Get the selected file name and display in a TextBox 
            if (result == true)
            {
                // Open document 
                string filename = dlg.FileName;

                // Read text into string
                string XMLData = System.IO.File.ReadAllText(filename);

                // Parse the Text into a SWID Tag
                var openTag = SoftwareIdentity.LoadXml(XMLData);

                tb_prdName.Text = openTag.Name;
                tb_version.Text = openTag.Version;
                cb_versionScheme.Text = openTag.VersionScheme;
                tb_tagId.Text = openTag.TagId;

                var meta = openTag.Meta.FirstOrDefault(each => each["edition"] != null);
                if (meta != null)
                {
                    // you can access metdata as a dictionary
                    var str1 = meta["edition"];
                    tb_edition.Text = str1;
                    // or use known properties directly
                    //var str = meta.edition;
                }



            }


        }
        private void exit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
