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
        private void btnCreate_Click(object sender, RoutedEventArgs e)
        {
            var firstTag = new SoftwareIdentity();

            firstTag.AddMeta().Generator = "TagVault.org Tag Creator";

            firstTag.Name = tb_name.Text;
            firstTag.Version = tb_version.Text;
            firstTag.VersionScheme = cb_versionScheme.Text;
            firstTag.TagId = tb_tagId.Text;
            firstTag.AddMeta().Edition = tb_edition.Text;

            string roles = "";
            string tagToWrite = "";

            if ((bool)tbtn_tagCreator.IsChecked)
                roles = "tagcreator";
            if ((bool)tbtn_softwareCreator.IsChecked)
                roles = roles + " softwarecreator";
            if ((bool)tbtn_licensor.IsChecked)
                roles = roles + " licensor";


            firstTag.AddEntity(tb_entityName.Text, tb_entityRegid.Text, roles);


            //
            // Tmp fix for incorrect attribute name
            // 
            //System.IO.File.WriteAllText("c:\\tmp\\test1.xml", firstTag.SwidTagXml.Replace("regId", "regid");

            tagToWrite = firstTag.SwidTagXml.Replace("regId", "regid");
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


    }
}
