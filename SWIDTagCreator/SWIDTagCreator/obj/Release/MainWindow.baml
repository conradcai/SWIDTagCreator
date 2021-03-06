   M S B A M L   `   `   `  ���� I  ESWIDTagCreator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication2WpfApplication2       WpfApplication2.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:WpfApplication2       � Title$  SWID Creator��$��563.6��$��519.326��.��� $��0,1,4,-1q�.+�]� $��	0,0,0,510q�.+�o� $	��Top=�$��18��$��0,0,0,0q�.@�m� $��_File��.@�m� -   $��_Open��m� -   $��_Save��m� -   $��_About��m� -   $��E_xit���� -    ��Name$ label��$��Product Name��$
��Left=�$��	10,48,0,0q�$	��Top=� J� RenderTransformOrigin$ -0.016,0.173&��� -    ��Name$ 
tb_prdName��$
��Left=�$��
123,52,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��227�� ^� ShowDuration$ 10000��.�� � ToolTip �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�Name�� $	��300��$��wrapwithoverflow=�RPThis should be a Software Vendor's normalized and consistently used product name�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�ISO Definition:�� This attribute provides the software component name as it would typically be referenced. For example, what would be seen in the add/remove dialog on a Windows device, or what is specified as the name of a packaged software product or a patch identifier name on a Linux device.�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�NIST-IR Definition:�� @name: the string name of the software product or component as it would normally be referenced, e.g., “ACME Roadrunner Management Suite”. A value for @name is required according to the SWID specification.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information.���� -   $ label1��$��Product Edition��$
��Left=�$��	10,76,0,0q�$	��Top=��� -   $ 
tb_edition��$
��Left=�$��
123,81,0,0q�$
 Wrap=�$	��Top=�$	��227��$ 0.179,-0.441&�$ 10000��.�� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�	Edition�� $	��300��$��wrapwithoverflow=���If the product defined includes an edition, the Software Vendor's normalized reference for the edition should be included in this field�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�ISO Definition:OM The variation of the product (Extended, Enterprise, Professional, Standard).�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�NIST-IR Definition:^\ @edition: the variation of the product (e.g., “Home”, “Enterprise”, “Student”).�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information.���� -	   $ label4��$��Colloquial Version��$
��Left=�$��
10,105,0,0q�$	��Top=��� -
   $ tb_Colloquial��$
��Left=�$��123,109,0,0q�$
 Wrap=�$	��Top=�$	��227��$ 	0.5,0.522&�$ 15000��.�� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�Colloquial Version�� $	��300��$��wrapwithoverflow=���If the product defined includes a colloquial version, or common version, include it here. This is not the underlying build version, but rather the Software Vendor's normalized reference version for a set of releases that are generally considered related to each other (i.e. Office 2016 - 2016 is the colloquial version).�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�ISO Definition:��The informal or colloquial version of the product (i.e. 2013). Note that this version may be the same through multiple releases of a software product where the version specified in SoftwareEntity is much more specific and will change for each software release.�� �� ��Note that this representation of version is typically used to identify a group of specific software releases that are part of the same release/support infrastructure (i.e. Fabrikam Office 2013). This version is used for string comparisons only and is not compared to be an earlier or later release (that is done via the SoftwareEntity version).�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�NIST-IR Definition:��@colloquialVersion: the informal version of the product (e.g., 2013). The colloquial version may be the same through multiple releases of a software product where the @version specified in <SoftwareIdentity> is much more specific and will change for each software release.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information.���� -   $ Version��$��Product Version��$
��Left=�$��
10,135,0,0q�$	��Top=��� -   $ 
tb_version��$
��Left=�$��123,139,0,0q�$
 Wrap=�$	��Top=�$	��120��$ 10000��.�� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�	Version�� $	��300��$��wrapwithoverflow=�|zThis should be the underlying full build version of the product. Often, this will be 4 digits separated by decimal points.�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�ISO Definition:=; Underlying development version for the software component.�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�NIST-IR Definition:�� @version: the detailed version of the product, e.g., “4.1.5”. In the SWID specification, a value for @version is optional and defaults to “0.0”. Sections 5.1.2 and 5.2.2 of this report provide guidelines that require a value for @version in corpus and primary tags.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information.���� -   $ label2��$��Version Scheme��$
��Left=�$��249,135,0,0q�$	��Top=��� -    ��Name$ cb_versionScheme��$
��Left=�$��348,137,0,0q�$	��Top=�$	��149�� �� SelectedIndex$ 2��$ 10000�� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�Version Scheme�� $	��300��$��wrapwithoverflow=�ecThis provides tools the ability to identify details of how to interpret the version number provided�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�ISO Definition:��VersionScheme provides the types of version schemas that are represented in the version values. See Standard for more information�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�NIST-IR Definition:��The SWID specification defines the <SoftwareIdentity> @versionScheme attribute to record a token that designates the “scheme” according to which the value of <SoftwareIdentity> @version can be parsed and interpreted. Like @version, the SWID specification defines @versionScheme as “optional” with a default value of multipartnumeric.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information.@��� $��decimal���� $��alphanumeric���� $��multipartnumeric���� $��multipartnumeric+suffix���� $��semver��{�.  �� $��unknown���� -   $ label3��$��TagID��$
��Left=�$��
10,166,0,0q�$	��Top=�$ 0.586,0.057&��� -   $ tb_tagId��$��123,171,0,0q�$
 Wrap=�$	��Top=�$
��Left=�$	��268��$ 30000��.�� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�TagID�� $	��500��$��wrapwithoverflow=�ECThis is a globally unique ID for the tag representing this product.�� �� (&A recommended string for this value is�� �� .�42regid + productName + version + edition + revision�� 
�������$��0,1,0,0q�$	��0,8q��� $	��500��$��wrapwithoverflow=��� .�ISO Definition:�� tagId shall be a globally unique identifier and should be assigned a GUID (see ISO/IEC 19770-5 definition for GUID). The tagId provides a unique reference for the specific product, version, edition, revision, etc.�� �� ��If two tagId’s match and the tagCreator is the same, the underlying products they represent are expected to be the same. It is recommended that if a software release is available for multiple platforms, that each platform have its own unique tagId. However, it’s recognized that some existing development processes may use the same tagId for the same release that may be available on different platforms.�� �� ��This allows IT systems to identify if a software item (for example, a patch) is installed simply by referencing the specific tagId value which is likely to be readily available in a software inventory.�� �� ��It is recommended, when possible, that a 16 byte GUID be used for this field; this provides global uniqueness without a significant amount of overhead for space.�� �� ��If use of a 16 byte GUID is not possible, a text-based globally unique ID may be constructed, this ID should include a unique naming authority for the tagCreator and sufficient additional details that the tagId is unique for the software product, version, edition, revision, etc. This would likely look as follows (+ is used as a string concatenation symbol):�� �� :8regid + productName + version + edition + revision + …�� 
�������$��0,1,0,0q�$	��0,8q��� $	��500��$��wrapwithoverflow=��� .�NIST-IR Definition:��@tagId: a globally unique identifier that may be used as a proxy identifier in other contexts to refer to the tagged product. A value for @tagId is required according to the SWID specification.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information.���� -   	 ��Name$	 btnCreateGUID��$��Generate GUID��$
��Left=�$��404,169,0,0q�$	��Top=�$��93��$��24���� $��
-3,226,3,0q�$	��Top=�$	��306��.+��� $
��Left=�
���   �$��2��$	��512���� -   
 ��Name$
 
gb_entity1��$`��ZEntity (At least one entity element is required - this Entity item will be the tagCreator)��$	��101��$��0,0,-4,0q�$
��Left=�$	��511��.��� $
��Left=�$��0,13,-8.6,0q�$	��Top=�$	��455��.+��� -   $ 
nameLabel1��$��Entity name��$
��Left=�$	��Top=�$��29,0,0,0q�$ 10000���� -   $ tb_entityName1��$
��Left=�$��	104,5,0,0q�$
 Wrap=�$	��Top=�$	��202��$ 10000��.�� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�Entity->Name�� $	��300��$��wrapwithoverflow=�<:This is the normalized/canonical name of the organization.�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�ISO Definition:KI The name of the organization claiming a particular role in the SWID tag.�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�NIST-IR Definition:��@name: the string name of the software product or component as it would normally be referenced, e.g., “ACME Roadrunner Management Suite”. A value for @name is required according to the SWID specification.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information.���� -   $ RegidLabel1��$��Entity regid��$
��Left=�$��	29,26,0,0q�$	��Top=��� -   $ tb_entityRegid1��$
��Left=�$��
104,31,0,0q�$
 Wrap=�$	��Top=�$	��201��$ 30000��.�� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�Entity->Regid�� $	��300��$��wrapwithoverflow=�GEThis is a valid minimal URI that can be used to reference the Entity.�� �� Example: tagvault.org�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�ISO Definition:|zThe regid of the organization. If the regid is unknown, the value “http:// invalid .unavailable” is the default value.�� �� ��A regid shall use a URI reference (see IETF RFC 3986). Once an organization specifies a regid for their organization’s software, that regid shall be used consistently for all software from the organization.�� �� ��To ensure interoperability, allow for open source project support and third party tag consistency, the following recommendations should be applied when creating a regid.�� �� HF— Unless otherwise required, the URI should utilize the http scheme.�� �� ��— If the http scheme is used, the “http://” may be left off the regid string (a string without a URI scheme specified is defined to use the “http://” scheme).�� �� {y— Unless otherwise required, the URI should use an absolute-URI that includes an authority part, such as a domain name.�� �� ��— To ensure consistency, the absolute-URI should use the minimum string required (for example, example.com should be used instead of www .example .com).�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�NIST-IR Definition:��@regid: the “registration identifier” of the entity. A value for @regid is required when the %lt;Entity> element is used to identify the tag creator (e.g., @role=“tagCreator”), otherwise @regid is optional and defaults to “invalid.unavailable” according to the SWID specification.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information.���� -   $ RolesLabel1��$��Roles��$
��Left=�$��	310,0,0,0q�$	��Top=��� -    ��Name$ tbtn_tagCreator1��$��
tagCreator��$
��Left=�$��	349,7,0,0q�$	��Top=� d� 	IsChecked$
 trueY�{�.  $ 10000�� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�Role (tagCreator)�� $	��300��$��wrapwithoverflow=���This indicates that the entity details listed in this section are specified as the organization (or individual) that created this SWID tag.�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�ISO Definition:pn The relationship between this organization and this tag e.g. tag, softwareCreator, licensor, tagCreator, etc.�� �� 86The role of tagCreator is required for every SWID tag.�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�NIST-IR Definition:+)The entity that creates a given SWID tag.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information�� -   $ tbtn_softwareCreator1��$��softwareCreator��$
��Left=�$��
349,27,0,0q�$	��Top=�$ 10000�� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�Role (softwareCreator)�� $	��300��$��wrapwithoverflow=���This indicates that the entity details listed in this section are specified as the organization (or individual) that created the software identified by this SWID tag.�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�ISO Definition:RP person or organization that creates a software product (3.46) or package (3.44)�� �� dbNote 1 to entry: This entity might or might not own the rights to sell or distribute the software.�� �� ��Note 2 to entry: This part of ISO/IEC 19770 uses the terms software creator and software licensor (3.43), rather than common alternatives such as “software publisher” or “software manufacturer”, for more precision and hopefully greater clarity.�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�NIST-IR Definition:;9A person or organization that creates a software product.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information�� -   $ tbtn_licensor1��$��licensor��$
��Left=�$��
349,49,0,0q�$	��Top=�$ 10000�� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�Role (licensor)�� $	��300��$��wrapwithoverflow=���This indicates that the entity details listed in this section are specified as the organization (or individual) that created the software identified by this SWID tag.�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�ISO Definition:�� person or organization who owns or holds the rights to issue a software license (3.41) for a specific software package Note 1 to entry: This entity might or might not create the software.�� �� ��Note 2 to entry: This part of ISO/IEC 19770 uses the terms software creator (3.38) and software licensor, rather than common alternatives such as “software publisher” or “software manufacturer”, for more precision and hopefully greater clarity.�� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .�NIST-IR Definition:usA person or organization that owns or holds the rights to issue a software license for a specific software package.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information�� $
��Left=�
���   �$��1��$	��512��9� -    9�Name$ Entity2�� 9� 
IsExpanded .   9� ExpandDirection$
 Down=�$��Stretch=�$�� Entity 2 (Optional)��$��9,0,0,0q� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�Optionional Entities�� $	��300��$��wrapwithoverflow=���Optional additional Entity entries can be created, but are not required. This tool currenly only supports entity references for up to three specific roles - tagCreator, softwareCreator and licensor. If desired, additional roles can be created such as aggregator, distributor and reseller.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information.��� $	��455��.+��� -   $ 
nameLabel2��$��Entity name��$
��Left=��� -   $ tb_entityName2��$
��Left=�$��	74,6,0,38q�$
 Wrap=�$	��202���� -   $ RegidLabel2��$��Entity regid��$
��Left=�$��0,26,0,0q�$	��Top=��� -   $ tb_entityRegid2��$
��Left=�$��
74,32,0,12q�$
 Wrap=�$	��202���� -    $ RolesLabel2��$��Roles��$
��Left=�$��	281,1,0,0q�$	��Top=��� -!   $ tbtn_softwareCreator2��$��softwareCreator��$
��Left=�$��	329,7,0,0q��� -"   $ tbtn_licensor2��$��licensor��$
��Left=�$��
329,29,0,0q�$	��Top=��� $
��Left=�
���   �$��1��$	��512��9� -#   $ Entity3�� .  $
 Down=�$��Stretch=�$�� Entity 3 (Optional)��$��85��$��9,0,0,0q� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q�Optioninal Entities�� $	��300��$��wrapwithoverflow=���Optional additional Entity entries can be created, but are not required. This tool currenly only supports entity references for up to three specific roles - tagCreator, softwareCreator and licensor. If desired, additional roles can be created such as aggregator, distributor and reseller.�� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$�:8See ISO/IEC 19770-2 or NIST-IR 8060 for more information.��� $	��455��.+��� -$   $ 
nameLabel3��$��Entity name��$
��Left=�$	��Top=��� -%   $ tb_entityName3��$
��Left=�$��74,5,0,0q�$
 Wrap=�$	��Top=�$	��202���� -&   $ RegidLabel3��$��Entity regid��$
��Left=�$��0,26,0,0q�$	��Top=��� -'   $ tb_entityRegid3��$
��Left=�$��	74,31,0,0q�$
 Wrap=�$	��Top=�$	��202���� -(   $ RolesLabel3��$��Roles��$
��Left=�$��	281,1,0,0q�$	��Top=��� -)   $ tbtn_softwareCreator3��$��softwareCreator��$
��Left=�$��	329,7,0,0q�$	��Top=��� -*   $ tbtn_licensor3��$��licensor��$
��Left=�$��
329,29,0,0q�$	��Top=��� -+   $	 	btnCreate��$��Create SWID��$
��Left=�$��422,503,0,0q�$	��Top=�$��75�� �� 	IsDefault . �� -,   $ 
label_Copy��$��Default Tag Lang��$
��Left=�$��	10,20,0,0q�$	��Top=�$ -0.016,0.173&�$	��105���� --   $ tb_defaultLang��$
��Left=�$��
123,26,0,0q�$
 Wrap=�$	��Top=�$��77��$ 10000��$��EN��.�� �� .+��� $
��Bold"�$��14(�$��0,0,0,5q��� $
�Name���� $	��300��$��wrapwithoverflow=��� $?�9This should be the default Language used for the SWID tag���� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .��� $�ISO Definition:���� $���ISO allows attributes to have multiple XML:Lang attributes, but the NIST-IR 8060 requires a default.  This utility currently only allows the default Lang to be defined.���� 
�������$��0,1,0,0q�$	��0,8q��� $	��300��$��wrapwithoverflow=��� .��� $�NIST-IR Definition:���� $���The <SoftwareIdentity> element MUST specify an @xml:lang attribute with a non-blank value to indicate the default human language used for expressing all language-dependent attribute values.���� 
�������$��0,1,0,0q�$	��0,8q�� .+��� $��Italic$��� $>�8See ISO/IEC 19770-2 or NIST-IR 8060 for more information��.��