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
using Microsoft.Win32;

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

            string errorMsg = "Error:  You have not entered enough information to create a proper SWID tag.  Please review the following items \r\n\r\n";
            Boolean error = false;

            if (tb_prdName.Text == "")
            {
                errorMsg = errorMsg + "   - Product Name must be provided\r\n";
                error = true;
            }
            if (tb_version.Text == "")
            {
                errorMsg = errorMsg + "   - Product Version must be provided\r\n";
                error = true;
            }

            if (tb_tagId.Text == "")
            {
                errorMsg = errorMsg + "   - TagID must be provided\r\n";
                error = true;
            }
            if (tb_entityName1.Text == "")
            {
                errorMsg = errorMsg + "   - Entity name must be provided\r\n";
                error = true;
            }
            if (tb_entityRegid1.Text == "")
            {
                errorMsg = errorMsg + "   - Entity regid must be provided\r\n";
                error = true;
            }


            if (error)
            {
                MessageBox.Show(errorMsg, "SWID Tag Generator", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }



            var swidTag = new SoftwareIdentity();

            swidTag.AddMeta().Generator = "TagVault.org Tag Creator";

            swidTag.Name = tb_prdName.Text;
            swidTag.Version = tb_version.Text;
            swidTag.VersionScheme = cb_versionScheme.Text;
            swidTag.TagId = tb_tagId.Text;
            if (tb_edition.Text != "")
            {
                swidTag.AddMeta().Edition = tb_edition.Text;
            }

            if (tb_Colloquial.Text != "")
            {
                swidTag.AddMeta().ColloquialVersion = tb_Colloquial.Text;
            }
            string tagToWrite = "";

            //
            // Setup the roles that have been selected by the user for the first entity
            //

            string roles = "";
            
            if ((bool)tbtn_tagCreator1.IsChecked)
                roles = "tagcreator";
            if ((bool)tbtn_softwareCreator1.IsChecked)
                roles = roles + " softwarecreator";
            if ((bool)tbtn_licensor1.IsChecked)
                roles = roles + " licensor";

            swidTag.AddEntity(tb_entityName1.Text, tb_entityRegid1.Text, roles);

            //
            // Setup the roles that have been selected by the user for the first entity
            //

            
            if (tb_entityName2.Text != "")
            {
                roles = "";
                if ((bool)tbtn_softwareCreator2.IsChecked)
                    roles = roles + " softwarecreator";
                if ((bool)tbtn_licensor2.IsChecked)
                    roles = roles + " licensor";

                swidTag.AddEntity(tb_entityName2.Text, tb_entityRegid2.Text, roles);
            }

            if (tb_entityName3.Text != "")
            {
                roles = "";
                if ((bool)tbtn_softwareCreator3.IsChecked)
                    roles = roles + " softwarecreator";
                if ((bool)tbtn_licensor3.IsChecked)
                    roles = roles + " licensor";

                swidTag.AddEntity(tb_entityName3.Text, tb_entityRegid3.Text, roles);
            }


            //
            // Tmp fix for incorrect attribute name
            // 
            //System.IO.File.WriteAllText("c:\\tmp\\test1.xml", swidTag.SwidTagXml.Replace("regId", "regid");

            tagToWrite = swidTag.SwidTagXml.Replace("regId", "regid");
            tagToWrite = tagToWrite.Replace("p2:role", "role");
            tagToWrite = tagToWrite.Replace(" xmlns:p2=\"http://standards.iso.org/iso/19770/-2/2015/schema.xsd\" ", " ");
            tagToWrite = tagToWrite.Replace("standalone=\"yes\"", "");
            tagToWrite = tagToWrite.Replace("utf-16", "utf-8");

            SaveFileDialog saveFileDialog = new SaveFileDialog()
            {
                Filter = "SWIDTag (*.swidtag)|*.swidtag"
            };
            if (saveFileDialog.ShowDialog() == true)
                System.IO.File.WriteAllText(saveFileDialog.FileName, tagToWrite);
            //System.IO.File.WriteAllText(dialog.FileName, tagToWrite);
            
            //
            // End of Tmp fix
            //
            //System.IO.File.WriteAllText("c:\\tmp\\test1.xml", tagToWrite);

        }

        private void chkSWCreator_Click1 (object sender, RoutedEventArgs e)
        {
            if (tbtn_softwareCreator1.IsChecked == true)
            {
                tbtn_softwareCreator2.IsEnabled = false;
                tbtn_softwareCreator3.IsEnabled = false;
            }
            else
            {
                tbtn_softwareCreator2.IsEnabled = true;
                tbtn_softwareCreator3.IsEnabled = true;
            }
        }
        private void chkSWCreator_Click2(object sender, RoutedEventArgs e)
        {
            if (tbtn_softwareCreator2.IsChecked == true)
            {
                tbtn_softwareCreator1.IsEnabled = false;
                tbtn_softwareCreator3.IsEnabled = false;
            }
            else
            {
                tbtn_softwareCreator1.IsEnabled = true;
                tbtn_softwareCreator3.IsEnabled = true;
            }
        }
        private void chkSWCreator_Click3(object sender, RoutedEventArgs e)
        {
            if (tbtn_softwareCreator3.IsChecked == true)
            {
                tbtn_softwareCreator1.IsEnabled = false;
                tbtn_softwareCreator2.IsEnabled = false;
            }
            else
            {
                tbtn_softwareCreator1.IsEnabled = true;
                tbtn_softwareCreator2.IsEnabled = true;
            }
        }

        private void chkLicensor_Click1(object sender, RoutedEventArgs e)
        {
            if (tbtn_licensor1.IsChecked == true)
            {
                tbtn_licensor2.IsEnabled = false;
                tbtn_licensor3.IsEnabled = false;
            }
            else
            {
                tbtn_licensor2.IsEnabled = true;
                tbtn_licensor3.IsEnabled = true;
            }
        }
        private void chkLicensor_Click2(object sender, RoutedEventArgs e)
        {
            if (tbtn_licensor2.IsChecked == true)
            {
                tbtn_licensor1.IsEnabled = false;
                tbtn_licensor3.IsEnabled = false;
            }
            else
            {
                tbtn_licensor1.IsEnabled = true;
                tbtn_licensor3.IsEnabled = true;
            }
        }
        private void chkLicensor_Click3(object sender, RoutedEventArgs e)
        {
            if (tbtn_licensor3.IsChecked == true)
            {
                tbtn_licensor1.IsEnabled = false;
                tbtn_licensor2.IsEnabled = false;
            }
            else
            {
                tbtn_licensor1.IsEnabled = true;
                tbtn_licensor2.IsEnabled = true;
            }
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
            dlg.DefaultExt = "*.swidtag";
            dlg.Filter = "SWID Tag Files (*.swidtag)|*.swidtag";

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
                var meta = openTag.Meta.FirstOrDefault(each => each["edition"] != null);
                if (meta != null)
                {
                    // you can access metdata as a dictionary
                    var str1 = meta["edition"];
                    tb_edition.Text = str1;
                    // or use known properties directly
                    //var str = meta.edition;
                }
                tb_version.Text = openTag.Version;
                cb_versionScheme.Text = openTag.VersionScheme;
                tb_tagId.Text = openTag.TagId;

                meta = openTag.Meta.FirstOrDefault(each => each["colloquialVersion"] != null);
                if (meta != null)
                {
                    // you can access metdata as a dictionary
                    var str1 = meta["colloquialVersion"];
                    tb_Colloquial.Text = str1;
                    // or use known properties directly
                    //var str = meta.edition;
                }

                 
                var entities = openTag.Entities;
                int enumEntities = entities.Count();
                if (enumEntities !=0)
                {
                    //var test = entities.FirstOrDefault;
                    // you can access metdata as a dictionary
                    //var str1 = entity["tagCreator"];
                    //tbtn_tagCreator1.Checked = true;
                    // or use known properties directly
                    //var str = meta.edition;
                }



            }


        }
        private void exit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Expander_KeyDown(object sender, KeyEventArgs e)
        {

        }
    }
}
