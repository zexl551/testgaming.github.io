SQLite format 3   @     '   E                                                            ' .4    �    ��K
�	��Q��RJ                                                                                                                                                                                                                                                                                                                                                                                                                                                                       �$W-�QindexSymbolDefinition_DefiningFileId_IndexSymbolDefinitionCREATE INDEX [SymbolDefinition_DefiningFileId_Index]
    ON [SymbolDefinition] ([DefiningFileId])�C-�GindexSymbolDefinition_Name_IndexSymbolDefinitionCREATE INDEX [SymbolDefinition_Name_Index]
    ON [SymbolDefinition] ([Name] COLLATE NOCASE)�=--�-tableSymbolDefinitionSymbolDefinitionCREATE TABLE [SymbolDefinition]
(
    [SymbolDefinitionId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [ProviderId] INTEGER NOT NULL
        REFERENCES [ProviderEntity]([ProviderId])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [Name] NVARCHAR(255) NOT NULL COLLATE NOCASE,
    [FullyQualifiedName] NVARCHAR(255) COLLATE NOCASE,
    [Kind] INTEGER NOT NULL,
    [Accessibility] INTEGER NOT NULL,
    [DefiningFileId] INTEGER NOT NULL
        REFERENCES [FileSystemEntity]([FileSystemEntityId]) 
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [LocationRow] INTEGER NOT NULL,
    [LocationColumn] INTEGER NOT NULL
)�/_-�_indexFileScannerCache_FileSystemEntityId_IndexFileScannerCacheCREATE INDEX [FileScannerCache_FileSystemEntityId_Index]
    ON [FileScannerCache]([FileSystemEntityId])�U
--�]tableFileScannerCacheFileScannerCacheCREATE TABLE [FileScannerCache]
(
    [FileScannerCacheId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
    [FileSystemEntityId] INTEGER NOT NULL REFERENCES [FileSystemEntity]([FileSystemEntityId])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [ProviderId] INTEGER NOT NULL REFERENCES [ProviderEntity]([ProviderId])
        ON DELETE CASCADE,
    [Type] INTEGER NOT NULL,
    [Timestamp] DATETIME NULL
)�-	/)�indexProviderType_TypeProviderEntity
CREATE UNIQUE INDEX [ProviderType_Type]
    ON [ProviderEntity] ([ProviderType] COLLATE NOCASE,[ProviderVersion] COLLATE NOCASE)� ))�;tableProviderEntityProviderEntity	CREATE TABLE [ProviderEntity]
(
    [ProviderId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [ProviderType] NVARCHAR(20) NOT NULL COLLATE NOCASE,
    [ProviderVersion] NVARCHAR(20) NOT NULL COLLATE NOCASE
)�:E-�indexFileSystemEntity_Parent_NameFileSystemEntityCREATE UNIQUE INDEX [FileSystemEntity_Parent_Name]
    ON [FileSystemEntity] ([Name] COLLATE NOCASE, [ParentFileSystemEntityId])�Bk-�yindexFileSystemEntity_ParentFileSystemEntityId_IndexFileSystemEntityCREATE INDEX [FileSystemEntity_ParentFileSystemEntityId_Index]
    ON [FileSystemEntity] ([ParentFileSystemEntityId])�C-�GindexFileSystemEntity_Name_IndexFileSystemEntityCREATE INDEX [FileSystemEntity_Name_Index]
    ON [FileSystemEntity] ([Name] COLLATE NOCASE)�H--�CtableFileSystemEntityFileSystemEntityCREATE TABLE [FileSystemEntity]
(
    [FileSystemEntityId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [Name] NVARCHAR(255) NOT NULL COLLATE NOCASE,
    [ParentFileSystemEntityId] INTEGER NULL
        REFERENCES [FileSystemEntity]([FileSystemEntityId])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [IsFile] BIT NOT NULL,
    [LastObserved] DATETIME NOT NULL DEFAULT current_timestamp
)o1�indexSetting_Name_IndexSettingCREATE INDEX [Setting_Name_Index]
  ON [Setting] ([Name] COLLATE NOCASE)P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)�G�etableSettingSettingCREATE TABLE [Setting]
(
    [SettingId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [Name] NVARCHAR(255) NOT NULL COLLATE NOCASE,
    [Value] NVARCHAR(255) NU   
   � ���^;�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       �m C�'ProjectConfigurationService{
  "ProjectBuildConfigurations": [
    {
      "project": "AuthSystem.sln",
      "projectTarget": null,
      "name": "Debug|Any CPU"
    },
    {
      "project": "AuthSystem.csproj",
      "projectTarget": null,
      "name": "Debug|AnyCPU"
    }
  ],
  "StartupProjectFiles": [],
  "CurrentStartupProject": null
}! CDebugTargetsUserSettingsKey[]�F ;�aLastIndexSymbolScanners00000000-0000-0000-0000-000000000000-0ebd9de4-22ce-4281-a5d6-cb078794e4ce-2b449df6-6b1d-11d9-94ec-000d93589af6-3eec062c-1463-4780-a3cd-e651e09576e3-4b32c687-281c-4c6d-a2a1-3d874bfa2d4d-7b3bd5d3-8362-427d-89a4-742f2e2256c2-805375ec-d614-41f5-8993-5843fe63ea82-ae211dc5-ce20-41da-91a0-3d44a7652c6f-c62867cc-67a8-49c6-a9d0-2bef369d8bf7-d5d48e50-c894-4c5e-8666-761e2d7b301e-d9212c5d-975a-49e6-a753-2f586bfbf077-dfc75919-8da2-4b4c-bd45-165d2bcf6f61-ef98eb90-bf9b-11e4-bb52-0800200c9a66-f23db5b2-7d08-11d9-a709-000d93b6e43c-f7de61e2-bdde-4e2a-a139-8221b179584e /IndexProcessCount1' -3CreatedOrUpdated02/02/2021 22:17:41 'SchemaVersion1.3.5� [ ��r���[                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     -SymbolDefinition �)ProviderEntity-FileScannerCache2)FileSystemData
   FileSystemRef3FileSystemReference~-FileSystemEntity1Setting
   h ����h�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    CProjectConfigurationServiceCDebugTargetsUserSettingsKey;LastIndexSymbolScanners/IndexProcessCount-CreatedOrUpdated'	SchemaVersion   �    E���������u[A(�����iH#���fA����XE2
�
�
�
q
4
		�	�	u	6���R��N��q=��k'��i+��K	�����k:��l= �             <\ g	System.Configuration.ConfigurationManager.dll�ǿ��d0[ O	System.Composition.TypedParts.dll�ǿ��d-Z I	System.Composition.Runtime.dll�ǿ��d-Y I	System.Composition.Hosting.dll�ǿ��d0X O	System.Composition.Convention.dll�ǿ��d5W Y	System.Composition.AttributedModel.dll�ǿ��d4V W	System.ComponentModel.Annotations.dll�ǿ��d/U M	System.Collections.Immutable.dll�ǿ��dT runtimes�ǿ�Z<S ru�ǿ�Z<R pt-BR�ǿ�Z<Q pl�ǿ�Z<#P 5	NuGet.Frameworks.dll�ǿ��d"O 3	Newtonsoft.Json.dll�ǿ��d@N o	Microsoft.VisualStudio.Web.CodeGenerators.Mvc.dll�ǿ��dBM s	Microsoft.VisualStudio.Web.CodeGeneration.Utils.dll�ǿ��dGL }	Microsoft.VisualStudio.Web.CodeGeneration.Templating.dll�ǿ��dQK �	Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dll�ǿ��d<J g	Microsoft.VisualStudio.Web.CodeGeneration.dll�ǿ��dAI q	Microsoft.VisualStudio.Web.CodeGeneration.Core.dll�ǿ��dFH {	Microsoft.VisualStudio.Web.CodeGeneration.Contracts.dll�ǿ��d1G Q	Microsoft.IdentityModel.Tokens.dll�ǿ��dBF s	Microsoft.IdentityModel.Protocols.OpenIdConnect.dll�ǿ��d4E W	Microsoft.IdentityModel.Protocols.dll�ǿ��d2D S	Microsoft.IdentityModel.Logging.dll�ǿ��d8C _	Microsoft.IdentityModel.JsonWebTokens.dll�ǿ��d,B G	Microsoft.Identity.Client.dll�ǿ��d2A S	Microsoft.Extensions.Primitives.dll�ǿ��d/@ M	Microsoft.Extensions.Options.dll�ǿ��d/? M	Microsoft.Extensions.Logging.dll�ǿ��d<> g	Microsoft.Extensions.Logging.Abstractions.dll�ǿ��d;= e	Microsoft.Extensions.DependencyInjection.dll�ǿ��dH< 	Microsoft.Extensions.DependencyInjection.Abstractions.dll�ǿ��dB; s	Microsoft.Extensions.Configuration.Abstractions.dll�ǿ��d6: [	Microsoft.Extensions.Caching.Memory.dll�ǿ��d<9 g	Microsoft.Extensions.Caching.Abstractions.dll�ǿ��d:8 c	Microsoft.EntityFrameworkCore.SqlServer.dll�ǿ��d;7 e	Microsoft.EntityFrameworkCore.Relational.dll�ǿ��d06 O	Microsoft.EntityFrameworkCore.dll�ǿ��d75 ]	Microsoft.EntityFrameworkCore.Design.dll�ǿ��d=4 i	Microsoft.EntityFrameworkCore.Abstractions.dll�ǿ��d+3 E	Microsoft.Data.SqlClient.dll�ǿ��d42 W	Microsoft.CodeAnalysis.Workspaces.dll�ǿ��d/1 M	Microsoft.CodeAnalysis.Razor.dll�ǿ��d)0 A	Microsoft.CodeAnalysis.dll�ǿ��d;/ e	Microsoft.CodeAnalysis.CSharp.Workspaces.dll�ǿ��d0. O	Microsoft.CodeAnalysis.CSharp.dll�ǿ��d6- [	Microsoft.AspNetCore.Razor.Language.dll�ǿ��d, ko�ǿ�Yeh+ ja�ǿ�Y>r* it�ǿ�Y>r) '	Humanizer.dll�ǿ��d( fr�ǿ�Y>r' es�ǿ�Y}5& Y	dotnet-aspnet-codegenerator-design.dll�ǿ��d% de�ǿ�Y}$ cs�ǿ�Y}F# {	AutoMapper.Extensions.Microsoft.DependencyInjection.dll�ǿ��d" )	AutoMapper.dll�ǿ��d#! 5	AuthSystem.Views.pdb�ǿ��d#  5	AuthSystem.Views.dll�ǿ��d, G	AuthSystem.runtimeconfig.json�ǿ��d0 O	AuthSystem.runtimeconfig.dev.json�ǿ��d )	AuthSystem.pdb�ǿ��d )	AuthSystem.exe�ǿ��d )	AuthSystem.dll�ǿ��d# 5	AuthSystem.deps.json�ǿ��d -	appsettings.json�ǿ��d+ E	appsettings.Development.json�ǿ��d 'netcoreapp3.1�ǿ��d Debug�ǿ��d  wwwroot�ǿ�V�<  Views�ǿ�V�< ! 	Startup.cs�ǿ��d  Services�ǿ�V�<  	README.md�ǿ��d ! Properties�ǿ�V�< ! 	Program.cs�ǿ��d  obj�ǿ�V�<  Models�ǿ�VZE ! Migrations�ǿ�VZE  Helpers�ǿ�VZE
  Entities�ǿ�VZE	 # Controllers�ǿ�VZE  bin�ǿ��d ) 	AuthSystem.sln�ǿ��d$ 9 	AuthSystem.csproj.user�ǿ��d / 	AuthSystem.csproj�ǿ��d% ; 	AuthorizationService.cs�ǿ��d - 	appsettings.json�ǿ��d* E 	appsettings.Development.json�ǿ   �-   �G   �   N   �     ��`��vG4!��c���E[K>7�>�2������L�� �T�I�5�� X�|��$��e?
�
�
�
H

	�	�	�	]	5	���[4���H��#��le�[�TG��"����a;	���c\��PD    /cMicrosoft.CodeAnalysis.CSharp.resources.dllt3kMicrosoft.CodeAnalysis.Workspaces.resources.dlls(UMicrosoft.CodeAnalysis.resources.dllr:yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dllq/cMicrosoft.CodeAnalysis.CSharp.resources.dllp3kMicrosoft.CodeAnalysis.Workspaces.resources.dllo(UMicrosoft.CodeAnalysis.resources.dlln:yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dllm/cMicrosoft.CodeAnalysis.CSharp.resources.dlll3kMicrosoft.CodeAnalysis.Workspaces.resources.dllk(UMicrosoft.CodeAnalysis.resources.dllj:yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dlli/cMicrosoft.CodeAnalysis.CSharp.resources.dllh3kMicrosoft.CodeAnalysis.Workspaces.resources.dllg(UMicrosoft.CodeAnalysis.resources.dllf:yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dlle/cMicrosoft.CodeAnalysis.CSharp.resources.dlldzh-Hantczh-Hansbtra2iSystem.Security.Cryptography.ProtectedData.dll`ASystem.Runtime.Caching.dll_'SSystem.IdentityModel.Tokens.Jwt.dll^+[System.Diagnostics.DiagnosticSource.dll]1gSystem.Configuration.ConfigurationManager.dll\%OSystem.Composition.TypedParts.dll["ISystem.Composition.Runtime.dllZ"ISystem.Composition.Hosting.dllY%OSystem.Composition.Convention.dllX*YSystem.Composition.AttributedModel.dllW)WSystem.ComponentModel.Annotations.dllV$MSystem.Collections.Immutable.dllUruntimesTruS	pt-BRRplQ5NuGet.Frameworks.dllP3Newtonsoft.Json.dllO5oMicrosoft.VisualStudio.Web.CodeGenerators.Mvc.dllN7sMicrosoft.VisualStudio.Web.CodeGeneration.Utils.dllM<}Microsoft.VisualStudio.Web.CodeGeneration.Templating.dllLF�Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dllK1gMicrosoft.VisualStudio.Web.CodeGeneration.dllJ6qMicrosoft.VisualStudio.Web.CodeGeneration.Core.dllI;{Microsoft.VisualStudio.Web.CodeGeneration.Contracts.dllH&QMicrosoft.IdentityModel.Tokens.dllG7sMicrosoft.IdentityModel.Protocols.OpenIdConnect.dllF)WMicrosoft.IdentityModel.Protocols.dllE'SMicrosoft.IdentityModel.Logging.dllD-_Microsoft.IdentityModel.JsonWebTokens.dllC!GMicrosoft.Identity.Client.dllB'SMicrosoft.Extensions.Primitives.dllA$MMicrosoft.Extensions.Options.dll@$MMicrosoft.Extensions.Logging.dll?1gMicrosoft.Extensions.Logging.Abstractions.dll>0eMicrosoft.Extensions.DependencyInjection.dll==Microsoft.Extensions.DependencyInjection.Abstractions.dll<7sMicrosoft.Extensions.Configuration.Abstractions.dll;+[Microsoft.Extensions.Caching.Memory.dll:1gMicrosoft.Extensions.Caching.Abstractions.dll9/cMicrosoft.EntityFrameworkCore.SqlServer.dll80eMicrosoft.EntityFrameworkCore.Relational.dll7%OMicrosoft.EntityFrameworkCore.dll6,]Microsoft.EntityFrameworkCore.Design.dll52iMicrosoft.EntityFrameworkCore.Abstractions.dll4 EMicrosoft.Data.SqlClient.dll3)WMicrosoft.CodeAnalysis.Workspaces.dll2$MMicrosoft.CodeAnalysis.Razor.dll1AMicrosoft.CodeAnalysis.dll00eMicrosoft.CodeAnalysis.CSharp.Workspaces.dll/%OMicrosoft.CodeAnalysis.CSharp.dll.+[Microsoft.AspNetCore.Razor.Language.dll-ko,ja+it*'Humanizer.dll)fr(es'*Ydotnet-aspnet-codegenerator-design.dll&de%cs$;{AutoMapper.Extensions.Microsoft.DependencyInjection.dll#)AutoMapper.dll"5AuthSystem.Views.pdb!5AuthSystem.Views.dll !GAuthSystem.runtimeconfig.json%OAuthSystem.runtimeconfig.dev.json)AuthSystem.pdb)AuthSystem.exe)AuthSystem.dll5AuthSystem.deps.json-appsettings.json Eappsettings.Development.json'netcoreapp3.1	Debugwwwroot	Views!Startup.csServicesREADME.md!Properties!Program.csobj
Models!MigrationsHelpersEntities
#Controllers	bin)AuthSystem.sln9AuthSystem.csproj.user/Aut   )$MMi   *%OMicrosoft.EntityFramework   %MMicrosoft.Data.SqlClient.SNI.dll �   jquery.js
  1� ���������������������������xqjc\UNG@92+	�	�	�	�	�	�	�	�	�	}	v���ztnhb\VPJD>82,& ���������������������~xrlf`ZTNHB<60*$ ���������������������|vpjd^XRLF@:4.(" ���������������������������~N6��vnf^VF>.&��#
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
{
s
k
c
[	�	�
S
K
C
;
3
+
#



	�	�	�	�	�	�	n	f	^	V	N	F	>	6~vVN&	.	&				����������������nf^F>6.�������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              )1)0)/).)-+,+)*()('&%$#"!    � �
	 � � � �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �
 �	 �	 �c �c �c �c �b �b �b �b �a �a �a �a � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �T �T �T �T �T �T �S �S �S �S �R �R �R �R �Q �Q �Q �Q �,,~,},|+{+z+y+x*w*v*u*t(s(r(q(p'o'n'm'l%k%j%i%h$g$f$e$dcba`_^]\[ZYXWVUTSRQPONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#"!             
 	        	   �    ��C��p(����\�gRSB��4��'����f>a�� �$T����)Y���#t?
�
�
�
O
!	�	�	t	@	���tJ��}D��N}������������a4���f8�������         1cMicrosoft.CodeAnalysis.CSharp.resources.dll(p5kMicrosoft.CodeAnalysis.Workspaces.resources.dll'o*UMicrosoft.CodeAnalysis.resources.dll'n<yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll'm1cMicrosoft.CodeAnalysis.CSharp.resources.dll'l5kMicrosoft.CodeAnalysis.Workspaces.resources.dll%k*UMicrosoft.CodeAnalysis.resources.dll%j<yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll%i1cMicrosoft.CodeAnalysis.CSharp.resources.dll%h5kMicrosoft.CodeAnalysis.Workspaces.resources.dll$g*UMicrosoft.CodeAnalysis.resources.dll$f<yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll$e1cMicrosoft.CodeAnalysis.CSharp.resources.dll$dzh-Hantczh-Hansbtra4iSystem.Security.Cryptography.ProtectedData.dll` ASystem.Runtime.Caching.dll_)SSystem.IdentityModel.Tokens.Jwt.dll^-[System.Diagnostics.DiagnosticSource.dll]3gSystem.Configuration.ConfigurationManager.dll\'OSystem.Composition.TypedParts.dll[$ISystem.Composition.Runtime.dllZ$ISystem.Composition.Hosting.dllY'OSystem.Composition.Convention.dllX,YSystem.Composition.AttributedModel.dllW+WSystem.ComponentModel.Annotations.dllV&MSystem.Collections.Immutable.dllUruntimesTruSpt-BRRplQ5NuGet.Frameworks.dllP3Newtonsoft.Json.dllO7oMicrosoft.VisualStudio.Web.CodeGenerators.Mvc.dllN9sMicrosoft.VisualStudio.Web.CodeGeneration.Utils.dllM>}Microsoft.VisualStudio.Web.CodeGeneration.Templating.dllLH�Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dllK3gMicrosoft.VisualStudio.Web.CodeGeneration.dllJ8qMicrosoft.VisualStudio.Web.CodeGeneration.Core.dllI={Microsoft.VisualStudio.Web.CodeGeneration.Contracts.dllH(QMicrosoft.IdentityModel.Tokens.dllG9sMicrosoft.IdentityModel.Protocols.OpenIdConnect.dllF+WMicrosoft.IdentityModel.Protocols.dllE)SMicrosoft.IdentityModel.Logging.dllD/_Microsoft.IdentityModel.JsonWebTokens.dllC#GMicrosoft.Identity.Client.dllB)SMicrosoft.Extensions.Primitives.dllA&MMicrosoft.Extensions.Options.dll@&MMicrosoft.Extensions.Logging.dll?3gMicrosoft.Extensions.Logging.Abstractions.dll>2eMicrosoft.Extensions.DependencyInjection.dll=?Microsoft.Extensions.DependencyInjection.Abstractions.dll<9sMicrosoft.Extensions.Configuration.Abstractions.dll;-[Microsoft.Extensions.Caching.Memory.dll:3gMicrosoft.Extensions.Caching.Abstractions.dll91cMicrosoft.EntityFrameworkCore.SqlServer.dll82eMicrosoft.EntityFrameworkCore.Relational.dll7'OMicrosoft.EntityFrameworkCore.dll6.]Microsoft.EntityFrameworkCore.Design.dll54iMicrosoft.EntityFrameworkCore.Abstractions.dll4"EMicrosoft.Data.SqlClient.dll3+WMicrosoft.CodeAnalysis.Workspaces.dll2&MMicrosoft.CodeAnalysis.Razor.dll1 AMicrosoft.CodeAnalysis.dll02eMicrosoft.CodeAnalysis.CSharp.Workspaces.dll/'OMicrosoft.CodeAnalysis.CSharp.dll.-[Microsoft.AspNetCore.Razor.Language.dll-ko,ja+it*'Humanizer.dll)fr(es',Ydotnet-aspnet-codegenerator-design.dll&de%cs$={AutoMapper.Extensions.Microsoft.DependencyInjection.dll#)AutoMapper.dll"5AuthSystem.Views.pdb!5AuthSystem.Views.dll #GAuthSystem.runtimeconfig.json'OAuthSystem.runtimeconfig.dev.json)AuthSystem.pdb)AuthSystem.exe)AuthSystem.dll5AuthSystem.deps.json-appsettings.json"Eappsettings.Development.json'netcoreapp3.1Debug wwwroot
 Views! Startup.cs Services README.md! Properties! Program.cs obj Models! Migrations Helpers Entities
# Controllers	 bin) AuthSystem.sln9 AuthSystem.csproj.user/     83gMicrosoft.Extensions.Caching.A   $EMicrosoft.Data.SqlClient.dll � �   /Index.cshtml.g.cs � �   � ��[.�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     5 U'3eec062c-1463-4780-a3cd-e651e09576e316.8.134.5269+ U805375ec-d614-41f5-8993-5843fe63ea821.05 U'7b3bd5d3-8362-427d-89a4-742f2e2256c216.8.134.52695 U'4b32c687-281c-4c6d-a2a1-3d874bfa2d4d16.8.134.52695 U'd9212c5d-975a-49e6-a753-2f586bfbf07716.8.134.5269
   � ��\/�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      6U'3eec062c-1463-4780-a3cd-e651e09576e316.8.134.5269,U805375ec-d614-41f5-8993-5843fe63ea821.06U'7b3bd5d3-8362-427d-89a4-742f2e2256c216.8.134.52696U'4b32c687-281c-4c6d-a2a1-3d874bfa2d4d16.8.134.52695U'	d9212c5d-975a-49e6-a753-2f586bfbf07716.8.134.5269   2$ ������|hUA-������yeQ=)������uaM9%�������s`L8$                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        2 1�ǿ��͖1 /�ǿ��0 .�ǿ��ʕ/ �ǿ���. 	���smL�- &�ǿ����, %�ǿ����+ $�ǿ����* #�ǿ����) "�ǿ����( �ǿ����' �ǿ����& !�ǿ����% �ǿ����$ �ǿ����# �ǿ����" �ǿ����!  ��ǿ��[    ��ǿ��[   ��ǿ��4
  ��ǿ��4
  ����m5��  ��ǿ��qL  ��ǿ��qL  ��ǿ���  ��ǿ����  ��ǿ����  ��ǿ���  ��ǿ���  ��ǿ��f  ��ǿ��f  ��ǿ��f  ��ǿ��?$  ��ǿ��6  ��ǿ��6  ��ǿ���J  ��ǿ��U_  ��ǿ��U_  ��ǿ��U_  ��ǿ��x
  ��ǿ���}	 �ǿ��D�  ��ǿ��D� �ǿ��D�  ��ǿ���  ��ǿ���� �ǿ���@ �ǿ��UE 		�ǿ���{ 	�ǿ��D�
   2� ���������������������m{tf_X.CQJ 5<'�����������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               12/1.0/.&-%,$+#*")('!&%$#" �! �  � � � � � � � � � � � � � � � � � � � � � �
	 � � �	   �    $����C�yL��j5���a5
�
�
s
N
%	�	�	o	9	�{4��o+��N��F��u/��U���D��L � � �                                   &?
 ##	RestoreToolRestoreTool �,>
 ))	RestoreSuccessRestoreSuccess �K=
 'i	ShowRequestIdAuthSystem.Models.ErrorViewModel.ShowRequestId �	C<
 a	RequestIdAuthSystem.Models.ErrorViewModel.RequestId �=;
 )M		ErrorViewModelAuthSystem.Models.ErrorViewModel �2:
 //AuthSystem.ModelsAuthSystem.Models �>9
 _DownAuthSystem.Migrations.LoginMigration.Down	 �!:8
 [UpAuthSystem.Migrations.LoginMigration.Up	 �!A7
 )U		LoginMigrationAuthSystem.Migrations.LoginMigration �:6
 77AuthSystem.MigrationsAuthSystem.Migrations �T5
 !BuildModelAuthSystem.Migrations.DataContextModelSnapshot.BuildModel	 �!V4
 =i	DataContextModelSnapshotAuthSystem.Migrations.DataContextModelSnapshot �:3
 77AuthSystem.MigrationsAuthSystem.Migrations �	D2
 e	PasswordAuthSystem.Models.AuthenticateModel.Password �D1
 e	UsernameAuthSystem.Models.AuthenticateModel.Username �C0
 /S		AuthenticateModelAuthSystem.Models.AuthenticateModel �2/
 //AuthSystem.ModelsAuthSystem.Models �V.
 -wBuildTargetModelAuthSystem.Migrations.LoginMigration.BuildTargetModel	 �!B-
 )U	LoginMigrationAuthSystem.Migrations.LoginMigration �:,
 77AuthSystem.MigrationsAuthSystem.Migrations �
@+
 c	ErrorAuthSystem.Controllers.HomeController.Error	 � D*
 g	PrivacyAuthSystem.Controllers.HomeController.Privacy	 �@)
 c	IndexAuthSystem.Controllers.HomeController.Index	 �R(
 )u	HomeControllerAuthSystem.Controllers.HomeController.HomeController	 �E'
 g_loggerAuthSystem.Controllers.HomeController._logger �2B&
 )W		HomeControllerAuthSystem.Controllers.HomeController �<%
 99AuthSystem.ControllersAuthSystem.Controllers �
9$
 U	UsersAuthSystem.Helpers.DataContext.Users �J#
 'eOnConfiguringAuthSystem.Helpers.DataContext.OnConfiguring	 �!E"
 #a	DataContextAuthSystem.Helpers.DataContext.DataContext	 �L!
 )g_configurationAuthSystem.Helpers.DataContext._configuration �	+8 
 #I		DataContextAuthSystem.Helpers.DataContext �4
 11AuthSystem.HelpersAuthSystem.Helpers �4
 E	ConfigureAuthSystem.Startup.Configure	D
 /U	ConfigureServicesAuthSystem.Startup.ConfigureServices	<
 'M	ConfigurationAuthSystem.Startup.Configuration0
 A	StartupAuthSystem.Startup.Startup	'
 1		StartupAuthSystem.Startup#
 !!AuthSystemAuthSystem	D
 /U		AutoMapperProfileAuthSystem.Helpers.AutoMapperProfile �4
 11AuthSystem.HelpersAuthSystem.Helpers �D
 /U	CreateHostBuilderAuthSystem.Program.CreateHostBuilder	$*
 ;	MainAuthSystem.Program.Main	'
 1		ProgramAuthSystem.Program#
 !!AuthSystemAuthSystem
A
 %W	PasswordSaltAuthSystem.Entities.User.PasswordSalt �A
 %W	PasswordHashAuthSystem.Entities.User.PasswordHash �3
 I	EmailAuthSystem.Entities.User.Email �9
 O	UsernameAuthSystem.Entities.User.Username �9
 O	LastnameAuthSystem.Entities.User.Lastname �;
 Q	FirstnameAuthSystem.Entities.User.Firstname �-
 C	GdAuthSystem.Entities.User.Gd �	+
 =		UserAuthSystem.Entities.User �6

 33AuthSystem.EntitiesAuthSystem.Entities �N	
 %q	AuthenticateAuthSystem.Controllers.AuthController.Authenticate	 �@
 c	IndexAuthSystem.Controllers.AuthController.Index	 �R
 )u	AuthControllerAuthSystem.Controllers.AuthController.AuthController	 �N
 %q	_authServiceAuthSystem.Controllers.AuthController._authService �	&B
 )W		AuthControllerAuthSystem.Controllers.AuthController �<
 99AuthSystem.ControllersAuthSystem.Controllers �B
 5K	AuthorizationServiceAuthSystem.AuthorizationService"
 !!	AuthSystemAuthSystem-
 ++	TargetFrameworkTar   #�$   "|   !?   �    &���Mx�,]�������m���hL0=L�'5�����x
�
U	�	a��b�sX9���)��f��@�+�]�$duw
v	�	�	�3�<&�����:�E
�
/	�	9�h�"0�e
d	�	p�|rJi[
m	�	y��)|J�
�
	�	�K�I
���u`����!
�O�����ZN�C
�
	�	�B�7���
�
@��	�H�	J                     !E__tagHelperStringValueBuffer �/__tagHelperRunner � C__tagHelperExecutionContext �;__tagHelperAttribute_12 �;__tagHelperAttribute_11 �;__tagHelperAttribute_10 �9__tagHelperAttribute_9 �9__tagHelperAttribute_8 �9__tagHelperAttribute_7 �9__tagHelperAttribute_6 �9__tagHelperAttribute_5 �9__tagHelperAttribute_4 �9__tagHelperAttribute_3 �9__tagHelperAttribute_2 �9__tagHelperAttribute_1 �9__tagHelperAttribute_0 �5Views_Shared__Layout �!AspNetCore �	Html �	Json �Component �Url �;ModelExpressionProvider �%ExecuteAsync �F�__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper �8s__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper �:w__Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelper �H�__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper �;__tagHelperScopeManager �$K__backed__tagHelperScopeManager �!E__tagHelperStringValueBuffer �/__tagHelperRunner � C__tagHelperExecutionContext �9__tagHelperAttribute_4 �9__tagHelperAttribute_3 �9__tagHelperAttribute_2 �9__tagHelperAttribute_1 �9__tagHelperAttribute_0 �-Views_Auth_Index �!AspNetCore �	Html �	Json �Component �Url �;ModelExpressionProvider �%ExecuteAsync �H�__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper �;__tagHelperScopeManager �$K__backed__tagHelperScopeManager �!E__tagHelperStringValueBuffer �/__tagHelperRunnerC__tagHelperExecutionContext~9__tagHelperAttribute_1}9__tagHelperAttribute_0|*YViews_Shared__ValidationScriptsPartial{!AspNetCorez1VerifyPasswordHashy1CreatePasswordHashx%Authenticatew#AuthServicev_contextu#AuthServicet%Authenticates7IAuthorizationServicer3AuthSystem.ServicesqHtmlpJsonoComponentnUrlm;ModelExpressionProviderl%ExecuteAsynck-Views_Home_Indexj!AspNetCoreiHtmlhJsongComponentfUrle;ModelExpressionProviderd%ExecuteAsyncc1Views_Shared_Errorb!AspNetCoreaHtml`Json_Component^Url];ModelExpressionProvider\%ExecuteAsync[1Views_Home_PrivacyZ!AspNetCoreYHtmlXJsonWComponentVUrlU;ModelExpressionProviderT%ExecuteAsyncS-Views__ViewStartR!AspNetCoreQHtmlPJsonOComponentNUrlM;ModelExpressionProviderL%ExecuteAsyncK1Views__ViewImportsJ!AspNetCoreI1MSBuildAllProjectsH*YPkgMicrosoft_EntityFrameworkCore_ToolsG'SPkgMicrosoft_CodeAnalysis_AnalyzersF1MSBuildAllProjectsE-NuGetToolVersionD/NuGetProjectStyleC3NuGetPackageFoldersB-NuGetPackageRootA/ProjectAssetsFile@#RestoreTool?)RestoreSuccess>'ShowRequestId=RequestId<)ErrorViewModel;/AuthSystem.Models:Down9Up8)LoginMigration77AuthSystem.Migrations6!BuildModel5=DataContextModelSnapshot47AuthSystem.Migrations3Password2Username1/AuthenticateModel0/AuthSystem.Models/-BuildTargetModel.)LoginMigration-7AuthSystem.Migrations,	Error+Privacy*	Index))HomeController(_logger')HomeController&9AuthSystem.Controllers%	Users$'OnConfiguring##DataContext")_configuration!#DataContext 1AuthSystem.HelpersConfigure/ConfigureServices'ConfigurationStartupStartup!AuthSystem/AutoMapperProfile1AuthSystem.Helpers/CreateHostBuilderMainProgram!AuthSystem%PasswordSalt%PasswordHash	EmailUsernameLastnameFirstnameGdUser3AuthSystem.Entities
%Authenticate		Index)AuthController%_authService)AuthController9AuthSystem.Controllers5AuthorizationService!   %7AuthSystem.Migrations6
� �
� ����ztnZTNHB<��������������������g`5.' �������������xqjc\UNG@92+$�������������=5-%��������������/(!������|ung`YRKD=6��}ume]UME=5-%
�
�
�
�
�
�
�
�
�
�
�
�
���������}ume]UME�������
�
�
�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �~ �} �| �{ �z    �y � � � � � � � � � � � � � � �p �o �n �m �l �k �j �i �h �g �f �e �d �c �b �a �` �_ �^ �] �\ �[ �Z �Y �X �W �V �U �T �S �R �Q �P �O �N �M �L �K �J �I �H �G �F �E �D �C �B �A �@ �? �> �= �< �; �: �9 �8 �7 �6 �5 �4 �3 �2 �1 �0 �/ �. �- �, �+ �* �) �( �' �& �% �$ �# �" �! �  � � � � � � � � � � � �
 �	 � � � � �	   �    )������c"���bD��{G����~Y2
�
�
�
[
9
	�	�	v	3��f!��_!��]��_#��a�}2��rC���h  �  a�
  �5  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\Sdk\Sdk.propse�
  �=  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Web\Sdk\Sdk.props�	  -  	appsettings.json'�	  E  	appsettings.Development.json)�	  I  	wwwroot\lib\jquery\LICENSE.txt1�	  Y  	wwwroot\lib\jquery\dist\jquery.min.map0�	  W  	wwwroot\lib\jquery\dist\jquery.min.js,� 	  O  	wwwroot\lib\jquery\dist\jquery.js3�	  ]  	wwwroot\lib\jquery-validation\LICENSE.mdD�~	    	wwwroot\lib\jquery-validation\dist\jquery.validate.min.js@�}	  w  	wwwroot\lib\jquery-validation\dist\jquery.validate.jsH�|
  �  	wwwroot\lib\jquery-validation\dist\additional-methods.min.jsC�{	  }  	wwwroot\lib\jquery-validation\dist\additional-methods.js@�z	  w  	wwwroot\lib\jquery-validation-unobtrusive\LICENSE.txtX�y
  �%  	wwwroot\lib\jquery-validation-unobtrusive\jquery.validate.unobtrusive.min.jsT�x
  �  	wwwroot\lib\jquery-validation-unobtrusive\jquery.validate.unobtrusive.js(�w	  G  	wwwroot\lib\bootstrap\LICENSE=�v	  q  	wwwroot\lib\bootstrap\dist\js\bootstrap.min.js.map9�u	  i  	wwwroot\lib\bootstrap\dist\js\bootstrap.min.js9�t	  i  	wwwroot\lib\bootstrap\dist\js\bootstrap.js.map5�s	  a  	wwwroot\lib\bootstrap\dist\js\bootstrap.jsD�r	    	wwwroot\lib\bootstrap\dist\js\bootstrap.bundle.min.js.map@�q	  w  	wwwroot\lib\bootstrap\dist\js\bootstrap.bundle.min.js@�p	  w  	wwwroot\lib\bootstrap\dist\js\bootstrap.bundle.js.map<�o	  o  	wwwroot\lib\bootstrap\dist\js\bootstrap.bundle.js?�n	  u  	wwwroot\lib\bootstrap\dist\css\bootstrap.min.css.map;�m	  m  	wwwroot\lib\bootstrap\dist\css\bootstrap.min.css;�l	  m  	wwwroot\lib\bootstrap\dist\css\bootstrap.css.map7�k	  e  	wwwroot\lib\bootstrap\dist\css\bootstrap.cssG�j
  �  	wwwroot\lib\bootstrap\dist\css\bootstrap-reboot.min.css.mapB�i	  {  	wwwroot\lib\bootstrap\dist\css\bootstrap-reboot.min.cssB�h	  {  	wwwroot\lib\bootstrap\dist\css\bootstrap-reboot.css.map>�g	  s  	wwwroot\lib\bootstrap\dist\css\bootstrap-reboot.cssD�f	    	wwwroot\lib\bootstrap\dist\css\bootstrap-grid.min.css.map@�e	  w  	wwwroot\lib\bootstrap\dist\css\bootstrap-grid.min.css@�d	  w  	wwwroot\lib\bootstrap\dist\css\bootstrap-grid.css.map<�c	  o  	wwwroot\lib\bootstrap\dist\css\bootstrap-grid.css�b	  1  	wwwroot\js\site.js�a	  3  	wwwroot\favicon.ico�`	  5  	wwwroot\css\site.css"�_	  ;  	Views\_ViewStart.cshtml$�^	  ?  	Views\_ViewImports.cshtml8�]	  g  	Views\Shared\_ValidationScriptsPartial.cshtml&�\	  C  	Views\Shared\_Layout.cshtml$�[	  ?  	Views\Shared\Error.cshtml$�Z	  ?  	Views\Home\Privacy.cshtml"�Y	  ;  	Views\Home\Index.cshtml"�X	  ;  	Views\Auth\Index.cshtml�W	  !  	Startup.cs"�V	  ;  	Services\AuthService.cs�U	  !  	Program.cs#�T	  =  	Models\ErrorViewModel.cs&�S	  C  	Models\AuthenticateModel.cs1�R	  Y  	Migrations\DataContextModelSnapshot.cs?�Q	  u  	Migrations\20210202153706_LoginMigration.Designer.cs6�P	  c  	Migrations\20210202153706_LoginMigration.cs!�O	  9  	Helpers\DataContext.cs'�N	  E  	Helpers\AutoMapperProfile.cs�M	  -  	Entities\User.cs(�L	  G  	Controllers\HomeController.cs(�K	  G  	Controllers\AuthController.cs"�J	  ;  	AuthorizationService.csB�I	  ] )bin\Release\netcoreapp3.1\AuthSystem.dllRelease|AnyCPU>�H	  Y %bin\Debug\netcoreapp3.1\AuthSystem.dllDebug|AnyCPU;�G	  m  	Microsoft.VisualStudio.Web.CodeGeneration.Design.�F	  S  	Microsoft.EntityFrameworkCore.Tools2�E	  [  	Microsoft.EntityFrameworkCore.SqlServer(�D	  G  	Microsoft.EntityFrameworkCore>�C	  s  	AutoMapper.Extensions.Microsoft.DependencyInjection�B	  !  	AutoMapper�A	  )  AuthSystem.sln+	 	 / +AuthSystem.csprojRelease|Any CPU)	 	 / 'A   +�z   ,�_   (�A   *�%   '�   
 6�s�K
�	��Q��RJ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              �W-�QindexSymbolDefinition_DefiningFileId_IndexSymbolDefinitionCREATE INDEX [SymbolDefinition_DefiningFileId_Index]
    ON [SymbolDefinition] ([DefiningFileId])�C-�GindexSymbolDefinition_Name_IndexSymbolDefinitionCREATE INDEX [SymbolDefinition_Name_Index]
    ON [SymbolDefinition] ([Name] COLLATE NOCASE)�=--�-tableSymbolDefinitionSymbolDefinitionCREATE TABLE [SymbolDefinition]
(
    [SymbolDefinitionId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [ProviderId] INTEGER NOT NULL
        REFERENCES [ProviderEntity]([ProviderId])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [Name] NVARCHAR(255) NOT NULL COLLATE NOCASE,
    [FullyQualifiedName] NVARCHAR(255) COLLATE NOCASE,
    [Kind] INTEGER NOT NULL,
    [Accessibility] INTEGER NOT NULL,
    [DefiningFileId] INTEGER NOT NULL
        REFERENCES [FileSystemEntity]([FileSystemEntityId]) 
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [LocationRow] INTEGER NOT NULL,
    [LocationColumn] INTEGER NOT NULL
)�/_-�_indexFileScannerCache_FileSystemEntityId_IndexFileScannerCacheCREATE INDEX [FileScannerCache_FileSystemEntityId_Index]
    ON [FileScannerCache]([FileSystemEntityId])�U
--�]tableFileScannerCacheFileScannerCacheCREATE TABLE [FileScannerCache]
(
    [FileScannerCacheId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
    [FileSystemEntityId] INTEGER NOT NULL REFERENCES [FileSystemEntity]([FileSystemEntityId])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [ProviderId] INTEGER NOT NULL REFERENCES [ProviderEntity]([ProviderId])
        ON DELETE CASCADE,
    [Type] INTEGER NOT NULL,
    [Timestamp] DATETIME NULL
)�-	/)�indexProviderType_TypeProviderEntity
CREATE UNIQUE INDEX [ProviderType_Type]
    ON [ProviderEntity] ([ProviderType] COLLATE NOCASE,[ProviderVersion] COLLATE NOCASE)� ))�;tableProviderEntityProviderEntity	CREATE TABLE [ProviderEntity]
(
    [ProviderId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [ProviderType] NVARCHAR(20) NOT NULL COLLATE NOCASE,
    [ProviderVersion] NVARCHAR(20) NOT NULL COLLATE NOCASE
)�:E-�indexFileSystemEntity_Parent_NameFileSystemEntityCREATE UNIQUE INDEX [FileSystemEntity_Parent_Name]
    ON [FileSystemEntity] ([Name] COLLATE NOCASE, [ParentFileSystemEntityId])�Bk-�yindexFileSystemEntity_ParentFileSystemEntityId_IndexFileSystemEntityCREATE INDEX [FileSystemEntity_ParentFileSystemEntityId_Index]
    ON [FileSystemEntity] ([ParentFileSystemEntityId])�C-�GindexFileSystemEntity_Name_IndexFileSystemEntityCREATE INDEX [FileSystemEntity_Name_Index]
    ON [FileSystemEntity] ([Name] COLLATE NOCASE)�H--�CtableFileSystemEntityFileSystemEntityCREATE TABLE [FileSystemEntity]
(
    [FileSystemEntityId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [Name] NVARCHAR(255) NOT NULL COLLATE NOCASE,
    [ParentFileSystemEntityId] INTEGER NULL
        REFERENCES [FileSystemEntity]([FileSystemEntityId])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [IsFile] BIT NOT NULL,
    [LastObserved] DATETIME NOT NULL DEFAULT current_timestamp
)o1�indexSetting_Name_IndexSettingCREATE INDEX [Setting_Name_Index]
  ON [Setting] ([Name] COLLATE NOCASE)P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)�G�etableSettingSettingCREATE TABLE [Setting]
(
    [SettingId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [Name] NVARCHAR(255) NOT NULL COLLATE NOCASE,
    [Value] NVARCHAR(255) NULL
)   
 � N��O1|�L� �                                                                                                                  �--�WviewFullPathEntitiesFullPathEntitiesCREATE VIEW FullPathEntities as
WITH RECURSIVE FullPathEntities AS(
        SELECT FileSystemEntityId AS BaseSystemEntityId, ParentFileSystemEntityId AS CurrentParentEntityId, Name AS CurrentPath FROM FileSystemEntity
        UNION
        SELECT
            P.BaseSystemEntityId,
            FS.ParentFileSystemEntityId AS CurrentParentEntityId,
            FS.Name || '\' || P.CurrentPath AS CurrentPath
        FROM FullPathEntities AS P
        INNER JOIN FileSystemEntity AS FS ON
        FS.FileSystemEntityId = P.CurrentParentEntityId
)
SELECT FS.*,P.CurrentPath As FullPath
FROM FullPathEntities AS P
INNER JOIN FileSystemEntity AS FS ON FS.FileSystemEntityId = P.BaseSystemEntityId
WHERE CurrentParentEntityId IS NULL�([)�YindexFileSystemData_FileSystemEntityId_IndexFileSystemDataCREATE INDEX [FileSystemData_FileSystemEntityId_Index]
    ON [FileSystemData] ([FileSystemEntityId])�x))�+tableFileSystemDataFileSystemDataCREATE TABLE [FileSystemData]
(
    [FileSystemDataId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [FileSystemEntityId] INTEGER NOT NULL
        REFERENCES [FileSystemEntity]([FileSystemEntityId]) 
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [ProviderId] INTEGER NOT NULL REFERENCES [ProviderEntity]([ProviderId])
        ON DELETE CASCADE,
    [Type] NVARCHAR(20) NOT NULL COLLATE NOCASE,
    [Name] NVARCHAR(255) NOT NULL COLLATE NOCASE,
    [Value] TEXT NULL,
    [Target] NVARCHAR(255) NULL COLLATE NOCASE,
    [Context] NVARCHAR(255) NULL COLLATE NOCASE
)�2_3�_indexFileSystemReference_ReferenceFileId_IndexFileSystemReferenceCREATE INDEX [FileSystemReference_ReferenceFileId_Index]
    ON [FileSystemReference]([ReferenceFileId])�2_3�_indexFileSystemReference_DependantFileId_IndexFileSystemReferenceCREATE INDEX [FileSystemReference_DependantFileId_Index]
    ON [FileSystemReference]([DependantFileId])�33�]tableFileSystemReferenceFileSystemReferenceCREATE TABLE [FileSystemReference]
(
    [FileSystemReferenceEntityId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
    [ProviderId] INTEGER NOT NULL
        REFERENCES [ProviderEntity]([ProviderId])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [DependantFileId] INTEGER NOT NULL
        REFERENCES [FileSystemEntity]([FileSystemEntityId])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [ReferenceFileId] INTEGER NULL
        REFERENCES [FileSystemEntity]([FileSystemEntityId])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [ReferenceFilePath] TEXT NULL COLLATE NOCASE,
    [Target] NVARCHAR(255) NULL COLLATE NOCASE,
    [Context] NVARCHAR(255) NULL COLLATE NOCASE,
    [Type] INTEGER NULL
)�$W-�QindexSymbolDefinition_DefiningFileId_IndexSymbolDefinitionCREATE INDEX [SymbolDefinition_DefiningFileId_Index]
    ON [SymbolDefinition] ([DefiningFileId])�C-�GindexSymbolDefinition_Name_IndexSymbolDefinitionCREATE INDEX [SymbolDefinition_Name_Index]
    ON [SymbolDefinition] ([Name] COLLATE NOCASE)�=--�-tableSymbolDefinitionSymbolDefinitionCREATE TABLE [SymbolDefinition]
(
    [SymbolDefinitionId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [ProviderId] INTEGER NOT NULL
        REFERENCES [ProviderEntity]([ProviderId])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [Name] NVARCHAR(255) NOT NULL COLLATE NOCASE,
    [FullyQualifiedName] NVARCHAR(255) COLLATE NOCASE,
    [Kind] INTEGER NOT NULL,
    [Accessibility] INTEGER NOT NULL,
    [DefiningFileId] INTEGER NOT NULL
        REFERENCES [FileSystemEntity]([FileSystemEntityId]) 
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    [LocationRow] INTEGER NOT NULL,
    [LocationColumn] INTEGER NOT NULL
)�/_-�_indexFileScannerCache_FileSystemEntityId_IndexFileScannerCacheCREATE INDEX [FileScannerCache_FileSystemEntityId_Index]
    ON [FileScannerCache]([FileSystemEntityId])
   �
� ����������������~wpib[TMF?81*# ������������������{tmf_XQJC<5.' ������������������xqjc\UNG@92+$������������������|ung`YRKD=6/(!�������������������yrkd]VOHA:3,%	
�
�
�
�
�
�
�
�
���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ~}|{zyxwvutsrqponmlkjihgfedcba`_^]\[ZYXWVUTSRQPONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#"! 
	  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	
   �� ���������������������ysmga[UOIC=71+%���������������������}wqke_YSMGA;5/)#����������������������{uoic]WQKE?93-'!	���������������������ysmga[UOIC=71+%���������������������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ~ } | { z y x w v u t s r q p o n m l k j i h g f e d c b a ` _ ^ ] \ [ Z Y X W V U T S R Q P O N M L K J I H G F E D C B A @ ? > = < ; : 9 8 7 6 5 4 3 2 1 0 / . - , + * ) ( ' & % $ # " !                        
 	            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  	   
� �D�
�	�	�	9�]�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ��c
 U%��= )64c063c9-0e21-46c8-a25b-44eb83b45fcaIntellisense{
  "CommandLineArgs": [
    "/noconfig",
    "/unsafe-",
    "/checked-",
    "/nowarn:1701,1702,1701,1702",
    "/fullpaths",
    "/nostdlib+",
    "/errorreport:prompt",
    "/warn:4",
    "/define:TRACE;RELEASE;NETCOREAPP;NETCOREAPP3_1",
    "/highentropyva+",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\automapper\\10.1.1\\lib\\netstandard2.0\\AutoMapper.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\automapper.extensions.microsoft.dependencyinjection\\8.1.0\\lib\\netstandard2.0\\AutoMapper.Extensions.Microsoft.DependencyInjection.dll",
    "/reference:C:   9O		 U1  )ed84fd5a-4ee1-4489-9ddd-1dd46ff97f19BuildConfigurationRelease|AnyCPU��S U%��! %64c063c9-0e21-46c8-a25b-44eb83b45fcaIntellisense{
  "CommandLineArgs": [
    "/noconfig",
    "/unsafe-",
    "/checked-",
    "/nowarn:1701,1702,1701,1702",
    "/fullpaths",
    "/nostdlib+",
    "/errorreport:prompt",
    "/warn:4",
    "/define:TRACE;DEBUG;NETCOREAPP;NETCOREAPP3_1",
    "/highentropyva+",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\automapper\\10.1.1\\lib\\netstandard2.0\\AutoMapper.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\automapper.extensions.microsoft.dependencyinjection\\8.1.0\\lib\\netstandard2.0\\AutoMapper.Extensions.Microsoft.DependencyInjection.dll",
       -M	 U1  %ed84fd5a-4ee1-4489-9ddd-1dd46ff97f19BuildConfigurationDebug|AnyCPUd	 U;I  55b77c41-9751-433c-9d5f-5e815f152562IsDefaultStartupProject{
  "debugType": "managed"
}�
 	U-�=  9e4637d9-06df-4b6d-8809-468ebd43b197ProjectBaseTypes{
  "Types": {
    "AuthSystem.csproj": "fae04ec0-301f-11d3-bf4b-00c04f79efbc"
  }
}�h
 	U+�a  94d3e38b-3f54-4224-b96d-e31cc1a3a351SolutionContent{
  "ProjectsByGuid": {
    "{BB939352-05B4-48C4-ADE4-9F83D9D68070}": {
      "Path": "AuthSystem.csproj",
      "Dependencies": [],
      "ParentProjectGuid": null,
      "ProjectConfigurations": {
        "Debug|Any CPU": {
          "ConfigurationName": "Debug",
          "FullName": "Debug|AnyCPU",
          "IncludeInBuild": true,
          "PlatformName": "AnyCPU"
        },
        "Release|Any CPU": {
          "ConfigurationName": "Release",
          "FullName": "Release|AnyCPU",
          "IncludeInBuild": true,
          "PlatformName": "AnyCPU"
        }
      },
      "ProjectGuid": "{BB939352-05B4-48C4-ADE4-9F83D9D68070}",
      "ProjectName": "AuthSystem",
      "ProjectType": 1,
      "RelativePath": "AuthSystem.csproj"
    }
  },
  "SolutionConfigurations": [
    {
      "ConfigurationName": "Debug",
      "FullName": "Debug|Any CPU",
      "PlatformName": "Any CPU"
    },
    {
      "ConfigurationName": "Release",
      "FullName": "Release|Any CPU",
      "PlatformName": "Any CPU"
    }
  ]
}O	 	U1  +ed84fd5a-4ee1-4489-9ddd-1dd46ff97f19BuildConfigurationRelease|Any CPUM	 	U1  'ed84fd5a-4ee1-4489-9ddd-1dd46ff97f19BuildConfigurationDebug|Any CPUk	 	U;Y  55b77c41-9751-433c-9d5f-5e815f152562IsDefaultStartupProject{
  "StartupProject": "AuthSystem"
}
   
� ����������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
		   N	 ���zY3�����u[A(�����iH#���fA����XE2
�
�
�
q
4
		�	�	u	6���R��N��q=��k'��i+��K	�����k:��l= �               <g	System.Configuration.ConfigurationManager.dll�ǿ��d0[ O	System.Composition.TypedParts.dll�ǿ��d-Z I	System.Composition.Runtime.dll�ǿ��d-Y I	System.Composition.Hosting.dll�ǿ��d0X O	System.Composition.Convention.dll�ǿ��d5W Y	System.Composition.AttributedModel.dll�ǿ��d4V W	System.ComponentModel.Annotations.dll�ǿ��d/U M	System.Collections.Immutable.dll�ǿ��dT runtimes�ǿ��dS ru�ǿ��dR pt-BR�ǿ��dQ pl�ǿ��d#P 5	NuGet.Frameworks.dll�ǿ��d"O 3	Newtonsoft.Json.dll�ǿ��d@N o	Microsoft.VisualStudio.Web.CodeGenerators.Mvc.dll�ǿ��dBM s	Microsoft.VisualStudio.Web.CodeGeneration.Utils.dll�ǿ��dGL }	Microsoft.VisualStudio.Web.CodeGeneration.Templating.dll�ǿ��dQK �	Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dll�ǿ��d<J g	Microsoft.VisualStudio.Web.CodeGeneration.dll�ǿ��dAI q	Microsoft.VisualStudio.Web.CodeGeneration.Core.dll�ǿ��dFH {	Microsoft.VisualStudio.Web.CodeGeneration.Contracts.dll�ǿ��d1G Q	Microsoft.IdentityModel.Tokens.dll�ǿ��dBF s	Microsoft.IdentityModel.Protocols.OpenIdConnect.dll�ǿ��d4E W	Microsoft.IdentityModel.Protocols.dll�ǿ��d2D S	Microsoft.IdentityModel.Logging.dll�ǿ��d8C _	Microsoft.IdentityModel.JsonWebTokens.dll�ǿ��d,B G	Microsoft.Identity.Client.dll�ǿ��d2A S	Microsoft.Extensions.Primitives.dll�ǿ��d/@ M	Microsoft.Extensions.Options.dll�ǿ��d/? M	Microsoft.Extensions.Logging.dll�ǿ��d<> g	Microsoft.Extensions.Logging.Abstractions.dll�ǿ��d;= e	Microsoft.Extensions.DependencyInjection.dll�ǿ��dH< 	Microsoft.Extensions.DependencyInjection.Abstractions.dll�ǿ��dB; s	Microsoft.Extensions.Configuration.Abstractions.dll�ǿ��d6: [	Microsoft.Extensions.Caching.Memory.dll�ǿ��d<9 g	Microsoft.Extensions.Caching.Abstractions.dll�ǿ��d:8 c	Microsoft.EntityFrameworkCore.SqlServer.dll�ǿ��d;7 e	Microsoft.EntityFrameworkCore.Relational.dll�ǿ��d06 O	Microsoft.EntityFrameworkCore.dll�ǿ��d75 ]	Microsoft.EntityFrameworkCore.Design.dll�ǿ��d=4 i	Microsoft.EntityFrameworkCore.Abstractions.dll�ǿ��d+3 E	Microsoft.Data.SqlClient.dll�ǿ��d42 W	Microsoft.CodeAnalysis.Workspaces.dll�ǿ��d/1 M	Microsoft.CodeAnalysis.Razor.dll�ǿ��d)0 A	Microsoft.CodeAnalysis.dll�ǿ��d;/ e	Microsoft.CodeAnalysis.CSharp.Workspaces.dll�ǿ��d0. O	Microsoft.CodeAnalysis.CSharp.dll�ǿ��d6- [	Microsoft.AspNetCore.Razor.Language.dll�ǿ��d, ko�ǿ��d+ ja�ǿ��d* it�ǿ��d) '	Humanizer.dll�ǿ��d( fr�ǿ��d' es�ǿ��d5& Y	dotnet-aspnet-codegenerator-design.dll�ǿ��d% de�ǿ��d$ cs�ǿ��dF# {	AutoMapper.Extensions.Microsoft.DependencyInjection.dll�ǿ��d" )	AutoMapper.dll�ǿ��d#! 5	AuthSystem.Views.pdb�ǿ��d#  5	AuthSystem.Views.dll�ǿ��d, G	AuthSystem.runtimeconfig.json�ǿ��d0 O	AuthSystem.runtimeconfig.dev.json�ǿ��d )	AuthSystem.pdb�ǿ��d )	AuthSystem.exe�ǿ��d )	AuthSystem.dll�ǿ��d# 5	AuthSystem.deps.json�ǿ��d -	appsettings.json�ǿ��d+ E	appsettings.Development.json�ǿ��d 'netcoreapp3.1�ǿ��d Debug�ǿ��d  wwwroot�ǿ��d  Views�ǿ��d ! 	Startup.cs�ǿ��d  Services�ǿ��d  	README.md�ǿ��d ! Properties�ǿ��d ! 	Program.cs�ǿ��d  obj�ǿ��&�  Models�ǿ��d ! Migrations�ǿ��d  Helpers�ǿ��d
  Entities�ǿ��d	 # Controllers�ǿ��d  bin�ǿ�q9w ) 	AuthSystem.sln���4��+$ 9 	AuthSystem.csproj.user�ǿ��d / 	AuthSystem.csproj���s�% ; 	AuthorizationService.cs�ǿ��d - 	appsettings.json�ǿ��d* E 	appsettings.Development.json�ǿ��d  .vs�ǿ��d� 8f ~YF0��f4��f��i*���d/��l7��t?��|G
�
�
O
	�	�	W	��_��d#��h'��0�����w^H(����sF � �                     �� M	Microsoft.Data.SqlClient.SNI.dll ��ǿ��d� native ��ǿ��d>� i	System.Security.Cryptography.ProtectedData.dll ��ǿ��d*� A	System.Runtime.Caching.dll ��ǿ��d,� E	Microsoft.Data.SqlClient.dll ��ǿ��d� )netstandard2.0 ��ǿ��d� 'netcoreapp3.1 ��ǿ��d� lib ��ǿ��d,� E	Microsoft.Data.SqlClient.dll ��ǿ��d� 'netcoreapp3.1 ��ǿ��d� lib ��ǿ��d� win-x86T�ǿ��d� win-x64T�ǿ��d� win-arm64T�ǿ��d� win-armT�ǿ��d� winT�ǿ��d� unixT�ǿ��d>� k	Microsoft.CodeAnalysis.Workspaces.resources.dllS�ǿ��d3�
 U	Microsoft.CodeAnalysis.resources.dllS�ǿ��d<\ g	System.Configuration.ConfigurationManager.dll�ǿ��d0[ O	System.Composition.TypedParts.dll�ǿ��d-Z I	System.Composition.Runtime.dll�ǿ��d-Y I	System.Composition.Hosting.dll�ǿ��d0X O	System.Composition.Convention.dll�ǿ��d5W Y	System.Composition.AttributedModel.dll�ǿ��d4V W	System.ComponentModel.Annotations.dll�ǿ��d/U M	System.Collections.Immutable.dll�ǿ��dT runtimes�ǿ��dS ru�ǿ��dR pt-BR�ǿ��dQ pl�ǿ��d#P 5	NuGet.Frameworks.dll�ǿ��d"O 3	Newtonsoft.Json.dll�ǿ��d   � y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dllS�ǿ��d:� c	Microsoft.CodeAnalysis.CSharp.resources.dllS�ǿ��d>� k	Microsoft.CodeAnalysis.Workspaces.resources.dllR�ǿ��d3� U	Microsoft.CodeAnalysis.resources.dllR�ǿ��dE� y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dllR�ǿ��d:� c	Microsoft.CodeAnalysis.CSharp.resources.dllR�ǿ��d>� k	Microsoft.CodeAnalysis.Workspaces.resources.dllQ�ǿ��d3� U	Microsoft.CodeAnalysis.resources.dllQ�ǿ��dE� y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dllQ�ǿ��d:�  c	Microsoft.CodeAnalysis.CSharp.resources.dllQ�ǿ��d> k	Microsoft.CodeAnalysis.Workspaces.resources.dll,�ǿ��d3~ U	Microsoft.CodeAnalysis.resources.dll,�ǿ��dE} y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll,�ǿ��d:| c	Microsoft.CodeAnalysis.CSharp.resources.dll,�ǿ��d>{ k	Microsoft.CodeAnalysis.Workspaces.resources.dll+�ǿ��d3z U	Microsoft.CodeAnalysis.resources.dll+�ǿ��dEy y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll+�ǿ��d:x c	Microsoft.CodeAnalysis.CSharp.resources.dll+�ǿ��d>w k	Microsoft.CodeAnalysis.Workspaces.resources.dll*�ǿ��d3v U	Microsoft.CodeAnalysis.resources.dll*�ǿ��dEu y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll*�ǿ��d:t c	Microsoft.CodeAnalysis.CSharp.resources.dll*�ǿ��d>s k	Microsoft.CodeAnalysis.Workspaces.resources.dll(�ǿ��d3r U	Microsoft.CodeAnalysis.resources.dll(�ǿ��dEq y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll(�ǿ��d:p c	Microsoft.CodeAnalysis.CSharp.resources.dll(�ǿ��d>o k	Microsoft.CodeAnalysis.Workspaces.resources.dll'�ǿ��d3n U	Microsoft.CodeAnalysis.resources.dll'�ǿ��dEm y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll'�ǿ��d:l c	Microsoft.CodeAnalysis.CSharp.resources.dll'�ǿ��d>k k	Microsoft.CodeAnalysis.Workspaces.resources.dll%�ǿ��d3j U	Microsoft.CodeAnalysis.resources.dll%�ǿ��dEi y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll%�ǿ��d:h c	Microsoft.CodeAnalysis.CSharp.resources.dll%�ǿ��d>g k	Microsoft.CodeAnalysis.Workspaces.resources.dll$�ǿ��d3f U	Microsoft.CodeAnalysis.resources.dll$�ǿ��dEe y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll$�ǿ��d:d c	Microsoft.CodeAnalysis.CSharp.resources.dll$�ǿ��dc zh-Hant�ǿ��db zh-Hans�ǿ��da tr�ǿ��d=` i	System.Security.Cryptography.ProtectedData.dll�ǿ��d)_ A	System.Runtime.Caching.dll�ǿ��d2^ S	System.IdentityModel.Tokens.Jwt.dll�ǿ��d6] [	System.Diagnostics.DiagnosticSource.dll�ǿ��d
A x ���b1����kR3�����maT;���qQ1#���]2
�
�
�
z
e
N
9
	�	�	�	v	WN	,����:;����lO:������lI,����iE/ ����yh_TH2�������v\C:'�����d[L2�����lA              "AAuthSystem.AssemblyInfo.cs)/m �jquery.validate.unobtrusive.min.js&&Ijquery.validate.unobtrusive.js%9jquery.validate.min.js$1jquery.validate.js#)jquery.min.map'jquery.min.jsjquery.js%Gjquery-validation-/ AuthSystem.csproj) AuthSystem.sln'KAuthSystem.RazorAssemblyInfo.cs)1*QAuthSystem.RazorAssemblyInfo.cache)0%Index.cshtml � �%Index.cshtml � �'Humanizer.dll)/HomeController.cs	 �Home � �Home � Helpersfr(#favicon.ico �es'/ErrorViewModel.cs �/Error.cshtml.g.cs � �%Error.cshtml � � Entities
,Ydotnet-aspnet-codegenerator-design.dll&dist dist �dist �Debug �Debugde%"CDataContextModelSnapshot.cs �)DataContext.cs �css
css �cs$# Controllers	5bootstrap.min.js.map-bootstrap.min.js7bootstrap.min.css.map/bootstrap.min.css-bootstrap.js.map%bootstrap.js/bootstrap.css.map'bootstrap.css#Cbootstrap.bundle.min.js.map;bootstrap.bundle.min.js;bootstrap.bundle.js.map3bootstrap.bundle.js$Ebootstrap-reboot.min.css.map =bootstrap-reboot.min.css =bootstrap-reboot.css.map5bootstrap-reboot.css
"Abootstrap-grid.min.css.map	9bootstrap-grid.min.css9bootstrap-grid.css.map1bootstrap-grid.cssbootstrap � � bin5AutoMapperProfile.cs �={AutoMapper.Extensions.Microsoft.DependencyInjection.dll#)AutoMapper.dll"5AuthSystem.Views.pdb � �5AuthSystem.Views.pdb!5AuthSystem.Views.dll � �5AuthSystem.Views.dll *QAuthSystem.TagHelpers.output.cache � �)OAuthSystem.TagHelpers.input.cache � �&IAuthSystem.StaticWebAssets.xml � �1_AuthSystem.StaticWebAssets.Manifest.cache � � AuthSystem.sln#GAuthSystem.runtimeconfig.json'OAuthSystem.runtimeconfig.dev.json-WAuthSystem.RazorTargetAssemblyInfo.cs � �0]AuthSystem.RazorTargetAssemblyInfo.cache � �*QAuthSystem.RazorCoreGenerate.cache � �'KAuthSystem.RazorAssemblyInfo.cs � �*QAuthSystem.RazorAssemblyInfo.cache � �)AuthSystem.pdb � �)AuthSystem.pdb8mAuthSystem.MvcApplicationPartsAssemblyInfo.cache � �)OAuthSystem.genruntimeconfig.cache � �)AuthSystem.exe)AuthSystem.dll � �)AuthSystem.dll5AuthSystem.deps.json0]AuthSystem.csprojAssemblyReference.cache � �9 AuthSystem.csproj.user(OAuthSystem.csproj.nuget.g.targets �&KAuthSystem.csproj.nuget.g.props �*SAuthSystem.csproj.nuget.dgspec.json �.YAuthSystem.csproj.FileListAbsolute.txt � �4gAuthSystem.csproj.EntityFrameworkCore.targets �1_AuthSystem.csproj.CoreCompileInputs.cache � �&IAuthSystem.csproj.CopyComplete � �   AuthSystem.csproj;AuthSystem.assets.cache)*;AuthSystem.assets.cache � �+SAuthSystem.AssemblyInfoInputs.cache)-+SAuthSystem.AssemblyInfoInputs.cache � �"AAuthSystem.AssemblyInfo.cs � �)AuthService.cs �; AuthorizationService.cs5AuthenticateModel.cs �/AuthController.cs	 �Auth � �Auth �-appsettings.json- appsettings.json"Eappsettings.Development.json!E appsettings.Development.json#apphost.exe � �!?additional-methods.min.js"7additional-methods.js!9_ViewStart.cshtml.g.cs � �/_ViewStart.cshtml � =_ViewImports.cshtml.g.cs � �3_ViewImports.cshtml �-W_ValidationScriptsPartial.cshtml.g.cs � �(M_ValidationScriptsPartial.cshtml � �3_Layout.cshtml.g.cs � �)_Layout.cshtml � �0_20210202153706_LoginMigration.Designer.cs �'M20210202153706_LoginMigration.cs � 	.vs6i.NETCoreApp,Version=v3.1.AssemblyAttributes.cs).6i.NETCoreApp,Version=v3.1.AssemblyAttributes.cs � �
! T �tkbS9�����{�%��vj^NFY� ���b0��m
�
p
=

	�	�	q	4��}@01��w9����]2���Z.
� �S'��}G��m�����	�	�	]	/	�����f��[L;,��r                                 +UMicrosoft.CodeAnalysis.resources.dllb �+WMicrosoft.CodeAnalysis.Workspaces.dll2+UMicrosoft.CodeAnalysis.resources.dllc �5kMicrosoft.CodeAnalysis.Workspaces.resources.dll'o5kMicrosoft.CodeAnalysis.Workspaces.resources.dll%k5kMicrosoft.CodeAnalysis.Workspaces.resources.dll$g� 
js<yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll,}6kMicrosoft.CodeAnalysis.Workspaces.resources.dllR �6kMicrosoft.CodeAnalysis.Workspaces.resources.dllQ �5kMicrosoft.CodeAnalysis.Workspaces.resources.dll,5kMicrosoft.CodeAnalysis.Workspaces.resources.dll+{5kMicrosoft.CodeAnalysis.Workspaces.resources.dll*w5kMicrosoft.CodeAnalysis.Workspaces.resources.dll(s� Uko,6kMicrosoft.CodeAnalysis.Workspaces.resources.dllc �6kMicrosoft.CodeAnalysis.Workspaces.resources.dllb �1cMicrosoft.CodeAnalysis.CSharp.resources.dll(p1cMicrosoft.CodeAnalysis.CSharp.resources.dll'l1cMicrosoft.CodeAnalysis.CSharp.resources.dll%h1cMicrosoft.CodeAnalysis.CSharp.resources.dll$d'OMicrosoft.CodeAnalysis.CSharp.dll.-[Microsoft.AspNetCore.Razor.Language.dll-LICENSE �lib � �lib � �
lib �3launchSettings.json �o Microsoft.Data	js �1jquery.validate.js#)jquery.min.map'jquery.min.jsjquery.js%Gjquery-validation-unobtrusive �/jquery-validation � jquery � �ja+it*/Index.cshtml.g.cs � �$EMicrosoft.Data.SqlClient.dll � �"EMicrosoft.Data.SqlClient.dll36kMicrosoft.CodeAnalysis.Workspaces.resources.dlla �6kMicrosoft.CodeAnalysis.Workspaces.resources.dllS �o!LICENSE.md  #LICENSE.txt �1cMicrosoft.CodeAnalysis.CSharp.resources.dll,|1cMicrosoft.CodeAnalysis.CSharp.resources.dll+x1cMicrosoft.CodeAnalysis.CSharp.resources.dll*t<yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll+y<yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll*u<yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll(q<yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll'm<yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll%i<yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll$e2eMicrosoft.CodeAnalysis.CSharp.Workspaces.dll/2cMicrosoft.CodeAnalysis.CSharp.resources.dllc �2cMicrosoft.CodeAnalysis.CSharp.resources.dllb �2cMicrosoft.CodeAnalysis.CSharp.resources.dlla �2cMicrosoft.CodeAnalysis.CSharp.resources.dllS �2cMicrosoft.CodeAnalysis.CSharp.resources.dllR �2cMicrosoft.CodeAnalysis.CSharp.resources.dllQ �+UMicrosoft.CodeAnalysis.resources.dlla �+UMicrosoft.CodeAnalysis.resources.dllS �+UMicrosoft.CodeAnalysis.resources.dllR �+UMicrosoft.CodeAnalysis.resources.dllQ �*UMicrosoft.CodeAnalysis.resources.dll,~*UMicrosoft.CodeAnalysis.resources.dll+z*UMicrosoft.CodeAnalysis.resources.dll*v*UMicrosoft.CodeAnalysis.resources.dll(r*UMicrosoft.CodeAnalysis.resources.dll'n*UMicrosoft.CodeAnalysis.resources.dll%j*UMicrosoft.CodeAnalysis.resources.dll$f&MMicrosoft.CodeAnalysis.Razor.dll1 AMicrosoft.CodeAnalysis.dll0=yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dllc �=yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dllb �=yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dlla �=yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dllS �=yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dllR �=yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dllQ �  Microsoft.Extensions.Options.dll@&MMicrosoft.Extensions.Logging.dll?3gMicrosoft.Extensions.Logging.Abstractions.dll>2eMicrosoft.Extensions.DependencyInjection.dll=?Microsoft.Extensions.DependencyInjection.Abstractions.dll<9sMicrosoft.Extensio*Qjquery.validate.unobtrusive.min.js&&Ijquery.validate.unobtrusive.js%9jquery.validate.min.js$#LICENSE.txt'
� . �N��p\C�����mN=�������p\<.���D��Z.���pWD0
�
�
�
�
q�
Lm
$	�	�	�	�Z	A	�����hU������x^@" ����ybP:#�������zsi^TJ@���������r`N<% ����lP,�����������_9	�AAuthSystem.AssemblyInfo.cs/3i.NETCoreApp,Version=v3.1.AssemblyAttributes.cs.(SAuthSystem.AssemblyInfoInputs.cache-;AuthSystem.assets.cache*	p|LICENSE.txt'/cMicrosoft.CodeAnalysis.CSharp.resources.dllh/cMicrosoft.CodeAnalysis.CSharp.resources.dlld%OMicrosoft.CodeAnalysis.CSharp.dll.+[Microsoft.AspNetCore.Razor.Language.dll-  /LICENSE.txt!LICENSE.md LICENSElib �lib �lib �3launchSettings.json �ko,jsjs �'Qjquery.validate.unobtrusive.min.js&#Ijquery.validate.unob/AuthSystem.csproj)AuthSystem.sln$KAuthSystem.RazorAssemblyInfo.cs1'QAuthSystem.RazorAssemblyInfo.cache0"Gjquery-validation-unobtrusive/jquery-validation jquery �ja+it*/Index.cshtml.g.cs �/Index.cshtml.g.cs �%Index.cshtml �%Index.cshtml �'Humanizer.dll)/HomeController.cs �	Home �	Home �Helpersfr(#favicon.ico �es'/ErrorViewModel.cs �/Error.cshtml.g.cs �%Error.cshtml �Entities
*Ydotnet-aspnet-codegenerator-design.dll&	dist	dist	dist
Debug �	Debugde% CDataContextModelSnapshot.cs �)DataContext.cs �csscss �cs$#Controllers	5bootstrap.min.js.map-bootstrap.min.js7bootstrap.min.css.map/bootstrap.min.css-bootstrap.js.map%bootstrap.js/bootstrap.css.map'bootstrap.css Cbootstrap.bundle.min.js.map;bootstrap.bundle.min.js;bootstrap.bundle.js.map3bootstrap.bundle.js!Ebootstrap-reboot.min.css.map=bootstrap-reboot.min.css=bootstrap-reboot.css.map5bootstrap-reboot.css
Abootstrap-grid.min.css.map	9bootstrap-grid.min.css9bootstrap-grid.css.map1bootstrap-grid.cssbootstrap �bin5AutoMapperProfile.cs �;{AutoMapper.Extensions.Microsoft.DependencyInjection.dll#)AutoMapper.dll"5AuthSystem.Views.pdb �5AuthSystem.Views.pdb!5AuthSystem.Views.dll �5AuthSystem.Views.dll 'QAuthSystem.TagHelpers.output.cache �&OAuthSystem.TagHelpers.input.cache �#IAuthSystem.StaticWebAssets.xml �._AuthSystem.StaticWebAssets.Manifest.cache �� AuthSystem.sln!GAuthSystem.runtimeconfig.json%OAuthSystem.runtimeconfig.dev.json*WAuthSystem.RazorTargetAssemblyInfo.cs �-]AuthSystem.RazorTargetAssemblyInfo.cache �'QAuthSystem.RazorCoreGenerate.cache �$KAuthSystem.RazorAssemblyInfo.cs �'QAuthSystem.RazorAssemblyInfo.cache �)AuthSystem.pdb �)AuthSystem.pdb5mAuthSystem.MvcApplicationPartsAssemblyInfo.cache �&OAuthSystem.genruntimeconfig.cache �)AuthSystem.exe)AuthSystem.dll �)AuthSystem.dll5AuthSystem.deps.json-]AuthSystem.csprojAssemblyReference.cache �9AuthSystem.csproj.user&OAuthSystem.csproj.nuget.g.targets �$KAuthSystem.csproj.nuget.g.props �(SAuthSystem.csproj.nuget.dgspec.json �+YAuthSystem.csproj.FileListAbsolute.txt �2gAuthSystem.csproj.EntityFrameworkCore.targets �._AuthSystem.csproj.CoreCompileInputs.cache �#IAuthSystem.csproj.CopyComplete �   AuthSystem.csproj;AuthSystem.assets.cache �(SAuthSystem.AssemblyInfoInputs.cache �AAuthSystem.AssemblyInfo.cs �)AuthService.cs �;AuthorizationService.cs5AuthenticateModel.cs �/AuthController.cs �	Auth �	Auth �-appsettings.json-appsettings.json Eappsettings.Development.json Eappsettings.Development.json#apphost.exe �?additional-methods.min.js"7additional-methods.js!9_ViewStart.cshtml.g.cs �/_ViewStart.cshtml �=_ViewImports.cshtml.g.cs �3_ViewImports.cshtml �*W_ValidationScriptsPartial.cshtml.g.cs �%M_ValidationScriptsPartial.cshtml �3_Layout.cshtml.g.cs �)_Layout.cshtml �._20210202153706_LoginMigration.Designer.cs �%M20210202153706_LoginMigration.cs �	.vs3i.NETCoreApp,Version=v3.1.AssemblyAttributes.cs �
" Q �'�tX4����������V���
�
�
{
K
	�	�	�	V	%��~C�-��{?��O:*���]4 ��Y+���Y%���U7��cB ����
�
�"
�9
g
=
	�	�	�	�	N	"������i�.`SD7*�s              )UMicrosoft.CodeAnalysis.resources.dll �H S'jquery.min.jsAMicrosoft.CodeAnalysis.dll0)UMicrosoft.CodeAnalysis.resources.dll �)UMicrosoft.CodeAnalysis.resources.dll �)WMicrosoft.CodeAnalysis.Workspaces.dll2)UMicrosoft.CodeAnalysis.resources.dll �)UMicrosoft.CodeAnalysis.resources.dll �)UMicrosoft.CodeAnalysis.resources.dll �3kMicrosoft.CodeAnalysis.Workspaces.resources.dll3kMicrosoft.CodeAnalysis.Workspaces.resources.dll{3kMicrosoft.CodeAnalysis.Workspaces.resources.dllw3kMicrosoft.CodeAnalysis.Workspaces.resources.dlls3kMicrosoft.CodeAnalysis.Workspaces.resources.dllo3kMicrosoft.CodeAnalysis.Workspaces.resources.dllk3kMicrosoft.CodeAnalysis.Workspaces.resources.dllgH )jquery.min.map:yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dllq4kMicrosoft.CodeAnalysis.Workspaces.resources.dll �l Microsoft.+[Microsoft.AspNetCore.Razor.Language.dll-#LICENSE.txt'#LICENSE.txt!LICENSE.md LICENSElib �lib �lib �3launchSettings.json �ko,jsjs �'Qjquery.validate.unobtrusive.min.js&#Ijquery.validate.unobtrusive.js%9jquery.validate.min.js$1jquery.validate.js#%MMicrosoft.Data.SqlClient.SNI.dll �%MMicrosoft.Data.SqlClient.SNI.dll �%MMicrosoft.Data.SqlClient.SNI.dll �!EMicrosoft.Data.SqlClient.dll �!EMicrosoft.Data.SqlClient.dll � EMicrosoft.Data.SqlClient.dll34kMicrosoft.CodeAnalysis.Workspaces.resources.dll �4kMicrosoft.CodeAnalysis.Workspaces.resources.dll �4kMicrosoft.CodeAnalysis.Workspaces.resources.dll �4kMicrosoft.CodeAnalysis.Workspaces.resources.dll �4kMicrosoft.CodeAnalysis.Workspaces.resources.dll �h !native �native �nativ/cMicrosoft.CodeAnalysis.CSharp.resources.dlll/cMicrosoft.CodeAnalysis.CSharp.resources.dllh/cMicrosoft.CodeAnalysis.CSharp.resources.dlld%OMicrosoft.CodeAnalysis.CSharp.dll.:yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dllm:yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dlli:yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dlle0eMicrosoft.CodeAnalysis.CSharp.Workspaces.dll/0cMicrosoft.CodeAnalysis.CSharp.resources.dll �0cMicrosoft.CodeAnalysis.CSharp.resources.dll �0cMicrosoft.CodeAnalysis.CSharp.resources.dll �0cMicrosoft.CodeAnalysis.CSharp.resources.dll �0cMicrosoft.CodeAnalysis.CSharp.resources.dll �0cMicrosoft.CodeAnalysis.CSharp.resources.dll �/cMicrosoft.CodeAnalysis.CSharp.resources.dll|/cMicrosoft.CodeAnalysis.CSharp.resources.dllx/cMicrosoft.CodeAnalysis.CSharp.resources.dllt/cMicrosoft.CodeAnalysis.CSharp.resources.dllp(UMicrosoft.CodeAnalysis.resources.dll~(UMicrosoft.CodeAnalysis.resources.dllz(UMicrosoft.CodeAnalysis.resources.dllv(UMicrosoft.CodeAnalysis.resources.dllr(UMicrosoft.CodeAnalysis.resources.dlln(UMicrosoft.CodeAnalysis.resources.dllj(UMicrosoft.CodeAnalysis.resources.dllf$MMicrosoft.CodeAnalysis.Razor.dll1;yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll �;yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll �;yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll �;yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll �;yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll �;yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll �:yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dll}:yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dlly:yMicrosoft.CodeAnalysis.CSharp.Workspaces.resources.dllu  �Microsoft.Extensions.Logging.Abstractions.dll>0eMicrosoft.Extensions.DependencyInjection.dll==Microsoft.Extensions.DependencyInjection.Abstractions.dll<7sMicrosoft.Extensions.Configuration.Abstractions.dll;+[Microsoft.Extensions.Caching.Memory.dll:1gMicrosoft.Extensions.Caching.Abstractions.dll9/cMicrosoft.EntityFrameworkCore.SqlServer.dll80eMicrosoft.EntityFrameworkCore.Relational.dll7   A| �q)����nS:!����e6	��|���N5���P��T��X��\9
�
�
�
�
J
	�	�	�	`	/����{:����kB����R����t\7 � �                                   %	Index.cshtml ��ǿ��d�r %	Index.cshtml ��ǿ��d �q /	_ViewStart.cshtml�ǿ��d"�p 3	_ViewImports.cshtml�ǿ��d�o Shared�ǿ��d�n Home�ǿ��d�m Auth�ǿ��d�l )	AuthService.cs�ǿ��d"�k 3	launchSettings.json�ǿ��d.�j I	AuthSystem.StaticWebAssets.xml ��ǿ��d9�i _	AuthSystem.StaticWebAssets.Manifest.cache ��ǿ��d5�h W	_ValidationScriptsPartial.cshtml.g.cs ��ǿ��d#�g 3	_Layout.cshtml.g.cs ��ǿ��d!�f /	Error.cshtml.g.cs ��ǿ��d#�e 3	Privacy.cshtml.g.cs ��ǿ��d!�d /	Index.cshtml.g.cs ��ǿ��d!�c /	Index.cshtml.g.cs ��ǿ��d&�b 9	_ViewStart.cshtml.g.cs ��ǿ��d(�a =	_ViewImports.cshtml.g.cs ��ǿ��d�` Shared ��ǿ��d�_ Home ��ǿ��d�^ Auth ��ǿ��d�] Views ��ǿ��d�\ +staticwebassets ��ǿ��d�[ Razor ��ǿ��d$�Z 5	AuthSystem.Views.pdb ��ǿ��d$�Y 5	AuthSystem.Views.dll ��ǿ��0� M	Microsoft.Data.SqlClient.SNI.dll ��ǿ��d� native ��ǿ��d>� i	System.Security.Cryptography.ProtectedData.dll ��ǿ��d*� A	System.Runtime.Caching.dll ��ǿ��d,� E	Microsoft.Data.SqlClient.dll ��ǿ��d� )netstandard2.0 ��ǿ��d� 'netcoreapp3.1 ��ǿ��d� lib ��ǿ��d,� E	Microsoft.Data.SqlClient.dll ��ǿ��d� 'netcoreapp3.1 ��ǿ��d� lib ��ǿ��d� win-x86T�ǿ��d� win-x64T�ǿ��d� win-arm64T�ǿ��d� win-armT�ǿ��d� winT�ǿ��d� unixT�ǿ��d>� k	Microsoft.CodeAnalysis.Workspaces.resources.dllS�ǿ��d3�
 U	Microsoft.CodeAnalysis.resources.dllS�ǿ��dE�	 y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dllS�ǿ��d:� c	Microsoft.CodeAnalysis.CSharp.resources.dllS�ǿ��d>� k	Microsoft.CodeAnalysis.Workspaces.resources.dllR�ǿ��d*�G A	AuthSystem.AssemblyInfo.cs ��ǿ��d�F #	apphost.exe ��ǿ��d>�E i	.NETCoreApp,Version=v3.1.AssemblyAttributes.cs ��ǿ��d�D 'netcoreapp3.1 ��ǿ��d"�C 3	project.nuget.cache�ǿ��d"�B 3	project.assets.json�ǿ��d�A Debug�ǿ��d0�@ O	AuthSystem.csproj.nuget.g.targets�ǿ��d.�? K	AuthSystem.csproj.nuget.g.props�ǿ��d2�> S	AuthSystem.csproj.nuget.dgspec.json�ǿ��d<�= g	AuthSystem.csproj.EntityFrameworkCore.targets�ǿ��d �< /	ErrorViewModel.cs�ǿ��d#�; 5	AuthenticateModel.cs�ǿ��d*�: C	DataContextModelSnapshot.cs�ǿ��d8�9 _	20210202153706_LoginMigration.Designer.cs�ǿ��d/�8 M	20210202153706_LoginMigration.cs�ǿ��d�7 )	DataContext.cs�ǿ��d#�6 5	AutoMapperProfile.cs�ǿ��d�5 	User.cs
�ǿ��d �4 /	HomeController.cs	�ǿ��d �3 /	AuthController.cs	�ǿ��d>�2 k	Microsoft.CodeAnalysis.Workspaces.resources.dllc�ǿ��d3�1 U	Microsoft.CodeAnalysis.resources.dllc�ǿ��dE�0 y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dllc�ǿ��d:�/ c	Microsoft.CodeAnalysis.CSharp.resources.dllc�ǿ��d>�. k	Microsoft.CodeAnalysis.Workspaces.resources.dllb�ǿ��d3�- U	Microsoft.CodeAnalysis.resources.dllb�ǿ��dE�, y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dllb�ǿ��d:�+ c	Microsoft.CodeAnalysis.CSharp.resources.dllb�ǿ��d>�* k	Microsoft.CodeAnalysis.Workspaces.resources.dlla�ǿ��d3�) U	Microsoft.CodeAnalysis.resources.dlla�ǿ��dE�( y	Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dlla�ǿ��d:�' c	Microsoft.CodeAnalysis.CSharp.resources.dlla�ǿ��d0�& M	Microsoft.Data.SqlClient.SNI.pdb ��ǿ��d0�% M	Microsoft.Data.SqlClient.SNI.dll ��ǿ��d�$ native ��ǿ��d0�# M	Microsoft.Data.SqlClient.SNI.pdb ��ǿ��d0�" M	Microsoft.Data.SqlClient.SNI.dll ��ǿ��d�! native ��ǿ��d0�  M	Microsoft.Data.SqlClient.SNI.pdb ��ǿ��d0� M	Microsoft.Data.SqlClient.SNI.dll ��ǿ��d� native ��ǿ��d0� M	Microsoft.Data.SqlClient.SNI.pdb ��ǿ��d
   c� �e<��O&���g5��W$���x���V��|H���N>2#��������oTKB E2����������7a��~tH
�
�
�
�
M
	�	�	�	|	E	<	0	!	p	�������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   (MMicrosoft.Data.SqlClient.SNI.pdb � �(MMicrosoft.Data.SqlClient.SNI.pdb � �(MMicrosoft.Data.SqlClient.SNI.dll � �(MMicrosoft.Data.SqlClient.SNI.dll � �(MMicrosoft.Data.SqlClient.SNI.dll � �(MMicrosoft.Data.SqlClient.SNI.dll � �'netcoreapp3.1+,Release+'netcoreapp3.1()Release(3gMicrosoft.Extensions.Caching.Abstractions.dll91cMicrosoft.EntityFrameworkCore.SqlServer.dll82eMicrosoft.EntityFrameworkCore.Relational.dll7'OMicrosoft.EntityFrameworkCore.dll6.]Microsoft.EntityFrameworkCore.Design.dll54iMicrosoft.EntityFrameworkCore.Abstractions.dll4(MMicrosoft.Data.SqlClient.SNI.pdb � �(MMicrosoft.Data.SqlClient.SNI.pdb � �)SMicrosoft.Extensions.Primitives.dllA&MMicrosoft.Extensions.Options.dll@&MMicrosoft.Extensions.Logging.dll?3gMicrosoft.Extensions.Logging.Abstractions.dll>2eMicrosoft.Extensions.DependencyInjection.dll=?Microsoft.Extensions.DependencyInjection.Abstractions.dll<9sMicrosoft.Extensions.Configuration.Abstractions.dll;-[Microsoft.Extensions.Caching.Memory.dll:site.js � �site.css � �)Privacy.cshtml � �Shared �3Privacy.cshtml.g.cs � �Shared � �Views � �+staticwebassets � �Razor � �zh-Hantczh-Hansb wwwrootwin-x86T �win-x64T �win-arm64T �win-armT �
winT �
 ViewsUser.cs
 �unixT �tra6iSystem.Security.Cryptography.ProtectedData.dll � �4iSystem.Security.Cryptography.ProtectedData.dll`"ASystem.Runtime.Caching.dll � � ASystem.Runtime.Caching.dll_)SSystem.IdentityModel.Tokens.Jwt.dll^-[System.Diagnostics.DiagnosticSource.dll]3gSystem.Configuration.ConfigurationManager.dll\'OSystem.Composition.TypedParts.dll[$ISystem.Composition.Runtime.dllZ$ISystem.Composition.Hosting.dllY'OSystem.Composition.Convention.dllX,YSystem.Composition.AttributedModel.dllW+WSystem.ComponentModel.Annotations.dllV&MSystem.Collections.Immutable.dllU! Startup.cs ServicesruntimesTruS README.mdpt-BRR! Properties3project.nuget.cache �3project.assets.json �! Program.csplQ obj5NuGet.Frameworks.dllP3Newtonsoft.Json.dllO)netstandard2.0 � �'netcoreapp3.1 � �'netcoreapp3.1 � �'netcoreapp3.1 � �'netcoreapp3.1native � �native � �native � �native � � Models! Migrations7oMicrosoft.VisualStudio.Web.CodeGenerators.Mvc.dllN9sMicrosoft.VisualStudio.Web.CodeGeneration.Utils.dllM>}Microsoft.VisualStudio.Web.CodeGeneration.Templating.dllLH�Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dllK3gMicrosoft.VisualStudio.Web.CodeGeneration.dllJ8qMicrosoft.VisualStudio.Web.CodeGeneration.Core.dllI={Microsoft.VisualStudio.Web.CodeGeneration.Contracts.dllH(QMicrosoft.IdentityModel.Tokens.dllG9sMicrosoft.IdentityModel.Protocols.OpenIdConnect.dllF+WMicrosoft.IdentityModel.Protocols.dllE)SMicrosoft.IdentityModel.Logging.dllD/_Microsoft.IdentityModel.JsonWebTokens.dllC#GMicrosoft.Identity.Client.dllB   f ���D��{8��{@��xQ9
�
�
�
�
�
d
@
	�	�	�	t	8	����~Y6����lW:&����j:#	����g:���nJ&����V7����yY8!���b1����{bB                                                        3�- S	AuthSystem.AssemblyInfoInputs.cache)�ǿ��ռ�, 'netcoreapp3.1+�ǿ�q9w�+ Release�ǿ�q9w'�* ;	AuthSystem.assets.cache)�ǿ�a���) 'netcoreapp3.1(�ǿ��&��( Release�ǿ��&��' #	LICENSE.txt�ǿ��d2�& Q	jquery.validate.unobtrusive.min.js�ǿ��d.�% I	jquery.validate.unobtrusive.js�ǿ��d&�$ 9	jquery.validate.min.js�ǿ��d"�# 1	jquery.validate.js�ǿ��d)�" ?	additional-methods.min.js�ǿ��d%�! 7	additional-methods.js�ǿ��d�  !	LICENSE.md �ǿ��d� dist �ǿ��d� )	jquery.min.map�ǿ��d� '	jquery.min.js�ǿ��d� 	jquery.js�ǿ��d� #	LICENSE.txt ��ǿ��d� dist ��ǿ��d$� 5	bootstrap.min.js.map�ǿ��d � -	bootstrap.min.js�ǿ��d � -	bootstrap.js.map�ǿ��d� %	bootstrap.js�ǿ��d+� C	bootstrap.bundle.min.js.map�ǿ��d'� ;	bootstrap.bundle.min.js�ǿ��d'� ;	bootstrap.bundle.js.map�ǿ��d#� 3	bootstrap.bundle.js�ǿ��d%� 7	bootstrap.min.css.map�ǿ��d!� /	bootstrap.min.css�ǿ��d!� /	bootstrap.css.map�ǿ��d� '	bootstrap.css�ǿ��d,� E	bootstrap-reboot.min.css.map�ǿ��d(� =	bootstrap-reboot.min.css�ǿ��d(� =	bootstrap-reboot.css.map�ǿ��d$�
 5	bootstrap-reboot.css�ǿ��d*�	 A	bootstrap-grid.min.css.map�ǿ��d&� 9	bootstrap-grid.min.css�ǿ��d&� 9	bootstrap-grid.css.map�ǿ��d"� 1	bootstrap-grid.css�ǿ��d� js�ǿ��d� css�ǿ��d� 	LICENSE ��ǿ��d� dist ��ǿ��d-� Gjquery-validation-unobtrusive ��ǿ��d!�  /jquery-validation ��ǿ��d� jquery ��ǿ��d�~ bootstrap ��ǿ��d�} 	site.js ��ǿ��d�| 	site.css ��ǿ��d�s %	Index.cshtml ��ǿ��d�r %	Index.cshtml ��ǿ��d �q /	_ViewStart.cshtml�ǿ��d"�p 3	_ViewImports.cshtml�ǿ��d�o Shared�ǿ��d�n Home�ǿ��d�m Auth�ǿ��d�l )	AuthService.cs�ǿ��d"�k 3	launchSettings.json�ǿ��d.�j I	AuthSystem.StaticWebAssets.xml ��ǿ��d9�i _	AuthSystem.StaticWebAssets.Manifest.cache ��ǿ��d5�h W	_ValidationScriptsPartial.cshtml.g.cs ��ǿ��d#�g 3	_Layout.cshtml.g.cs ��ǿ��d!�f /	Error.cshtml.g.cs ��ǿ��d#�e 3	Privacy.cshtml.g.cs ��ǿ��d!�d /	Index.cshtml.g.cs ��ǿ��d!�c /	Index.cshtml.g.cs ��ǿ��d&�b 9	_ViewStart.cshtml.g.cs ��ǿ��d(�a =	_ViewImports.cshtml.g.cs ��ǿ��d�` Shared ��ǿ��d�_ Home ��ǿ��d�^ Auth ��ǿ��d�] Views ��ǿ��d�\ +staticwebassets ��ǿ��d�[ Razor ��ǿ��d$�Z 5	AuthSystem.Views.pdb ��ǿ��d$�Y 5	AuthSystem.Views.dll ��ǿ��d2�X Q	AuthSystem.TagHelpers.output.cache ��ǿ��d1�W O	AuthSystem.TagHelpers.input.cache ��ǿ��d5�V W	AuthSystem.RazorTargetAssemblyInfo.cs ��ǿ��d8�U ]	AuthSystem.RazorTargetAssemblyInfo.cache ��ǿ��d2�T Q	AuthSystem.RazorCoreGenerate.cache ��ǿ��d/�S K	AuthSystem.RazorAssemblyInfo.cs ��ǿ��d2�R Q	AuthSystem.RazorAssemblyInfo.cache ��ǿ��d�Q )	AuthSystem.pdb ��ǿ��d@�P m	AuthSystem.MvcApplicationPartsAssemblyInfo.cache ��ǿ��d1�O O	AuthSystem.genruntimeconfig.cache ��ǿ��d�N )	AuthSystem.dll ��ǿ��d8�M ]	AuthSystem.csprojAssemblyReference.cache ��ǿ��d6�L Y	AuthSystem.csproj.FileListAbsolute.txt ��ǿ��d9�K _	AuthSystem.csproj.CoreCompileInputs.cache ��ǿ��d.�J I	AuthSystem.csproj.CopyComplete ��ǿ��d'�I ;	AuthSystem.assets.cache ��ǿ��d3�H S	AuthSystem.AssemblyInfoInputs.cache ��ǿ��d�{ lib�ǿ��d�z js�ǿ��d�y #	favicon.ico�ǿ��d�x css�ǿ��d0�w M	_ValidationScriptsPartial.cshtml ��ǿ��d�v )	_Layout.cshtml ��ǿ��d�u %	Error.cshtml ��ǿ��d�t )	Privacy.cshtml ��ǿ��d
   _1 )���W1���U������c;��v?��Q��������oOrZA92g�#
������b����{YL�nI
�
�
�
�
b
0
	�	�	�	j	6	/	%			��������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           %OMicrosoft.EntityFrameworkCore.dll6,]Microsoft.EntityFrameworkCore.Design.dll52iMicrosoft.EntityFrameworkCore.Abstractions.dll4%MMicrosoft.Data.SqlClient.SNI.pdb �%MMicrosoft.Data.SqlClient.SNI.pdb �%MMicrosoft.Data.SqlClient.SNI.pdb �%MMicrosoft.Data.SqlClient.SNI.pdb �'netcoreapp3.1,Release+'netcoreapp3.1)Release($MMicrosoft.Extensions.Logging.dll?1gMicrosoft.Extensions.Logging.Abstractions.dll>0eMicrosoft.Extensions.DependencyInjection.dll==Microsoft.Extensions.DependencyInjection.Abstractions.dll<7sMicrosoft.Extensions.Configuration.Abstractions.dll;+[Microsoft.Extensions.Caching.Memory.dll:1gMicrosoft.Extensions.Caching.Abstractions.dll9/cMicrosoft.EntityFrameworkCore.SqlServer.dll80eMicrosoft.EntityFrameworkCore.Relational.dll7site.js �site.css �)Privacy.cshtml �Shared �3Privacy.cshtml.g.cs �zh-Hantczh-Hansbwwwrootwin-x86 �win-x64 �win-arm64 �win-arm �win �
Views �	ViewsUser.cs �	unix �tra3iSystem.Security.Cryptography.ProtectedData.dll �2iSystem.Security.Cryptography.ProtectedData.dll`ASystem.Runtime.Caching.dll �ASystem.Runtime.Caching.dll_'SSystem.IdentityModel.Tokens.Jwt.dll^+[System.Diagnostics.DiagnosticSource.dll]1gSystem.Configuration.ConfigurationManager.dll\%OSystem.Composition.TypedParts.dll["ISystem.Composition.Runtime.dllZ"ISystem.Composition.Hosting.dllY%OSystem.Composition.Convention.dllX*YSystem.Composition.AttributedModel.dllW)WSystem.ComponentModel.Annotations.dllV$MSystem.Collections.Immutable.dllU+staticwebassets �!Startup.csShared �ServicesruntimesTruSREADME.md
Razor �	pt-BRR!Properties3project.nuget.cache �3project.assets.json �!Program.csplQobj5NuGet.Frameworks.dllP3Newtonsoft.Json.dllO)netstandard2.0 �'netcoreapp3.1 �'netcoreapp3.1 �'netcoreapp3.1 �'netcoreapp3.1native �native �native �native �
Models!Migrations5oMicrosoft.VisualStudio.Web.CodeGenerators.Mvc.dllN7sMicrosoft.VisualStudio.Web.CodeGeneration.Utils.dllM<}Microsoft.VisualStudio.Web.CodeGeneration.Templating.dllLF�Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dllK1gMicrosoft.VisualStudio.Web.CodeGeneration.dllJ6qMicrosoft.VisualStudio.Web.CodeGeneration.Core.dllI;{Microsoft.VisualStudio.Web.CodeGeneration.Contracts.dllH&QMicrosoft.IdentityModel.Tokens.dllG7sMicrosoft.IdentityModel.Protocols.OpenIdConnect.dllF)WMicrosoft.IdentityModel.Protocols.dllE'SMicrosoft.IdentityModel.Logging.dllD-_Microsoft.IdentityModel.JsonWebTokens.dllC!GMicrosoft.Identity.Client.dllB'SMicrosoft.Extensions.Primitives.dllA$MMicrosoft.Extensions.Options.dll@   ? � ��i+��C�yL��j5���a5
�
�
s
N
%	�	�	o	9	�{4��o+��N��F��u/��U���D��L � � �                                   &?
 ##	RestoreToolRestoreTool �,>
 ))	RestoreSuccessRestoreSuccess �K=
 'i	ShowRequestIdAuthSystem.Models.ErrorViewModel.ShowRequestId �	C<
 a	RequestIdAuthSystem.Models.ErrorViewModel.RequestId �=;
 )M		ErrorViewModelAuthSystem.Models.ErrorViewModel �2:
 //AuthSystem.ModelsAuthSystem.Models �>9
 _DownAuthSystem.Migrations.LoginMigration.Down	 �!:8
 [UpAuthSystem.Migrations.LoginMigration.Up	 �!A7
 )U		LoginMigrationAuthSystem.Migrations.LoginMigration �:6
 77AuthSystem.MigrationsAuthSystem.Migrations �T5
 !BuildModelAuthSystem.Migrations.DataContextModelSnapshot.BuildModel	 �!V4
 =i	DataContextModelSnapshotAuthSystem.Migrations.DataContextModelSnapshot �:3
 77AuthSystem.MigrationsAuthSystem.Migrations �	D2
 e	PasswordAuthSystem.Models.AuthenticateModel.Password �D1
 e	UsernameAuthSystem.Models.AuthenticateModel.Username �C0
 /S		AuthenticateModelAuthSystem.Models.AuthenticateModel �2/
 //AuthSystem.ModelsAuthSystem.Models �V.
 -wBuildTargetModelAuthSystem.Migrations.LoginMigration.BuildTargetModel	 �!B-
 )U	LoginMigrationAuthSystem.Migrations.LoginMigration �:,
 77AuthSystem.MigrationsAuthSystem.Migrations �
@+
 c	ErrorAuthSystem.Controllers.HomeController.Error	 � D*
 g	PrivacyAuthSystem.Controllers.HomeController.Privacy	 �@)
 c	IndexAuthSystem.Controllers.HomeController.Index	 �R(
 )u	HomeControllerAuthSystem.Controllers.HomeController.HomeController	 �E'
 g_loggerAuthSystem.Controllers.HomeController._logger �2B&
 )W		HomeControllerAuthSystem.Controllers.HomeController �<%
 99AuthSystem.ControllersAuthSystem.Controllers �
9$
 U	UsersAuthSystem.Helpers.DataContext.Users �J#
 'eOnConfiguringAuthSystem.Helpers.DataContext.OnConfiguring	 �!E"
 #a	DataContextAuthSystem.Helpers.DataContext.DataContext	 �L!
 )g_configurationAuthSystem.Helpers.DataContext._configuration �	+8 
 #I		DataContextAuthSystem.Helpers.DataContext �4
 11AuthSystem.HelpersAuthSystem.Helpers �4
 E	ConfigureAuthSystem.Startup.Configure	D
 /U	ConfigureServicesAuthSystem.Startup.ConfigureServices	<
 'M	ConfigurationAuthSystem.Startup.Configuration0
 A	StartupAuthSystem.Startup.Startup	'
 1		StartupAuthSystem.Startup#
 !!AuthSystemAuthSystem	D
 /U		AutoMapperProfileAuthSystem.Helpers.AutoMapperProfile �4
 11AuthSystem.HelpersAuthSystem.Helpers �D
 /U	CreateHostBuilderAuthSystem.Program.CreateHostBuilder	$*
 ;	MainAuthSystem.Program.Main	'
 1		ProgramAuthSystem.Program#
 !!AuthSystemAuthSystem
A
 %W	PasswordSaltAuthSystem.Entities.User.PasswordSalt �A
 %W	PasswordHashAuthSystem.Entities.User.PasswordHash �3
 I	EmailAuthSystem.Entities.User.Email �9
 O	UsernameAuthSystem.Entities.User.Username �9
 O	LastnameAuthSystem.Entities.User.Lastname �;
 Q	FirstnameAuthSystem.Entities.User.Firstname �-
 C	GdAuthSystem.Entities.User.Gd �	+
 =		UserAuthSystem.Entities.User �6

 33AuthSystem.EntitiesAuthSystem.Entities �N	
 %q	AuthenticateAuthSystem.Controllers.AuthController.Authenticate	 �@
 c	IndexAuthSystem.Controllers.AuthController.Index	 �R
 )u	AuthControllerAuthSystem.Controllers.AuthController.AuthController	 �N
 %q	_authServiceAuthSystem.Controllers.AuthController._authService �	&B
 )W		AuthControllerAuthSystem.Controllers.AuthController �<
 99AuthSystem.ControllersAuthSystem.Controllers �B
 5K	AuthorizationServiceAuthSystem.AuthorizationService"
 !!	AuthSystemAuthSystem-
 ++	TargetFrameworkTargetFramework� 4 � ��b.��n��t,��V���>
�
�
n
8
	�	�	T��~F��`��R��r��l6u � � � � � � � � � �                         p| 9�__tagHelperAttribute_0AspNetCore.Views_Shared__ValidationScriptsPartial.__tagHelperAttribute_0 �!bf{
 Yo		Views_Shared__ValidationScriptsPartialAspNetCore.Views_Shared__ValidationScriptsPartial �$z
 !!AspNetCoreAspNetCore �  �1qVerifyPasswordHashAuthSystem.Services.AuthService.VerifyPasswordHash	 �;  D1qCreatePasswordHashAuthSystem.Services.AuthService.CreatePasswordHash	 �+  �%e	AuthenticateAuthSystem.Services.AuthService.Authenticate	 �  �#c	AuthServiceAuthSystem.Services.AuthService.AuthService	 �  []_contextAuthSystem.Services.AuthService._context �  #K		AuthServiceAuthSystem.Services.AuthService �   �%yAuthenticateAuthSystem.Services.IAuthorizationService.Authenticate	 �   �7_	IAuthorizationServiceAuthSystem.Services.IAuthorizationService �	   833AuthSystem.ServicesAuthSystem.Services �4p
 M	HtmlAspNetCore.Views_Home_Index.Html �8P4o
 M	JsonAspNetCore.Views_Home_Index.Json �6G>n
 W	ComponentAspNetCore.Views_Home_Index.Component �4F2m
 K	UrlAspNetCore.Views_Home_Index.Url �2<Zl
 ;s	ModelExpressionProviderAspNetCore.Views_Home_Index.ModelExpressionProvider �0WDk
 %]	ExecuteAsyncAspNetCore.Views_Home_Index.ExecuteAsync	 �"C:j
 -C		Views_Home_IndexAspNetCore.Views_Home_Index �$i
 !!AspNetCoreAspNetCore �6h
 Q	HtmlAspNetCore.Views_Shared_Error.Html �\W6g
 Q	JsonAspNetCore.Views_Shared_Error.Json �ZG@f
 [	ComponentAspNetCore.Views_Shared_Error.Component �XF4e
 O	UrlAspNetCore.Views_Shared_Error.Url �V<\d
 ;w	ModelExpressionProviderAspNetCore.Views_Shared_Error.ModelExpressionProvider �TWFc
 %a	ExecuteAsyncAspNetCore.Views_Shared_Error.ExecuteAsync	 �"C>b
 1G		Views_Shared_ErrorAspNetCore.Views_Shared_Error �$a
 !!AspNetCoreAspNetCore �6`
 Q	HtmlAspNetCore.Views_Home_Privacy.Html �@P6_
 Q	JsonAspNetCore.Views_Home_Privacy.Json �>G@^
 [	ComponentAspNetCore.Views_Home_Privacy.Component �<F4]
 O	UrlAspNetCore.Views_Home_Privacy.Url �:<\\
 ;w	ModelExpressionProviderAspNetCore.Views_Home_Privacy.ModelExpressionProvider �8WF[
 %a	ExecuteAsyncAspNetCore.Views_Home_Privacy.ExecuteAsync	 �"C>Z
 1G		Views_Home_PrivacyAspNetCore.Views_Home_Privacy �$Y
 !!AspNetCoreAspNetCore �4X
 M	HtmlAspNetCore.Views__ViewStart.Html �7P4W
 M	JsonAspNetCore.Views__ViewStart.Json �5G>V
 W	ComponentAspNetCore.Views__ViewStart.Component �3F2U
 K	UrlAspNetCore.Views__ViewStart.Url �1<ZT
 ;s	ModelExpressionProviderAspNetCore.Views__ViewStart.ModelExpressionProvider �/WDS
 %]	ExecuteAsyncAspNetCore.Views__ViewStart.ExecuteAsync	 �"C:R
 -C		Views__ViewStartAspNetCore.Views__ViewStart �$Q
 !!AspNetCoreAspNetCore �6P
 Q	HtmlAspNetCore.Views__ViewImports.Html �.P6O
 Q	JsonAspNetCore.Views__ViewImports.Json �,G@N
 [	ComponentAspNetCore.Views__ViewImports.Component �*F4M
 O	UrlAspNetCore.Views__ViewImports.Url �(<\L
 ;w	ModelExpressionProviderAspNetCore.Views__ViewImports.ModelExpressionProvider �&WFK
 %a	ExecuteAsyncAspNetCore.Views__ViewImports.ExecuteAsync	 �!C>J
 1G		Views__ViewImportsAspNetCore.Views__ViewImports �$I
 !!AspNetCoreAspNetCore �4H
 11	MSBuildAllProjectsMSBuildAllProjects �\G
 YY	PkgMicrosoft_EntityFrameworkCore_ToolsPkgMicrosoft_EntityFrameworkCore_Tools �VF
 SS	PkgMicrosoft_CodeAnalysis_AnalyzersPkgMicrosoft_CodeAnalysis_Analyzers �4E
 11	MSBuildAllProjectsMSBuildAllProjects �0D
 --	NuGetToolVersionNuGetToolVersion �
2C
 //	NuGetProjectStyleNuGetProjectStyle �	6B
 33	NuGetPackageFoldersNuGetPackageFolders �0A
 --	NuGetPackageRootNuGetPackageRoot �2@
 //	ProjectAssetsFileProjectAssetsFile �   ( � ��+�0c�F
�
�
T
-	�	�	8��$�l�7��L�R��|D��@ � �                                        ]�$
 9y__tagHelperAttribute_2AspNetCore.Views_Shared__Layout.__tagHelperAttribute_2 �#b]�#
 9y__tagHelperAttribute_1AspNetCore.Views_Shared__Layout.__tagHelperAttribute_1 �"b]�"
 9y__tagHelperAttribute_0AspNetCore.Views_Shared__Layout.__tagHelperAttribute_0 �!bB�!
 5K		Views_Shared__LayoutAspNetCore.Views_Shared__Layout �$� 
 !!AspNetCoreAspNetCore �5�
 M	HtmlAspNetCore.Views_Auth_Index.Html � �Z5�
 M	JsonAspNetCore.Views_Auth_Index.Json � �G?�
 W	ComponentAspNetCore.Views_Auth_Index.Component � �F3�
 K	UrlAspNetCore.Views_Auth_Index.Url � �<[�
 ;s	ModelExpressionProviderAspNetCore.Views_Auth_Index.ModelExpressionProvider � �WD�
 %]	ExecuteAsyncAspNetCore.Views_Auth_Index.ExecuteAsync	 �?C�/� ��E__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelperAspNetCore.Views_Auth_Index.__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper �=X�� s�+__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelperAspNetCore.Views_Auth_Index.__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper �<K�� w�/__Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelperAspNetCore.Views_Auth_Index.__Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelper �;M�3� ��I__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelperAspNetCore.Views_Auth_Index.__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper �:Z[�
 ;s__tagHelperScopeManagerAspNetCore.Views_Auth_Index.__tagHelperScopeManager �/]l� K�__backed__tagHelperScopeManagerAspNetCore.Views_Auth_Index.__backed__tagHelperScopeManager �.]e�
 E}__tagHelperStringValueBufferAspNetCore.Views_Auth_Index.__tagHelperStringValueBuffer �,O�
 /g__tagHelperRunnerAspNetCore.Views_Auth_Index.__tagHelperRunner �*Wc�
 C{__tagHelperExecutionContextAspNetCore.Views_Auth_Index.__tagHelperExecutionContext �(aY�
 9q__tagHelperAttribute_4AspNetCore.Views_Auth_Index.__tagHelperAttribute_4 �%bY�
 9q__tagHelperAttribute_3AspNetCore.Views_Auth_Index.__tagHelperAttribute_3 �$bY�
 9q__tagHelperAttribute_2AspNetCore.Views_Auth_Index.__tagHelperAttribute_2 �#bY�
 9q__tagHelperAttribute_1AspNetCore.Views_Auth_Index.__tagHelperAttribute_1 �"bY�
 9q__tagHelperAttribute_0AspNetCore.Views_Auth_Index.__tagHelperAttribute_0 �!b:�
 -C		Views_Auth_IndexAspNetCore.Views_Auth_Index �$�

 !!AspNetCoreAspNetCore �J�	
 y	HtmlAspNetCore.Views_Shared__ValidationScriptsPartial.Html �bPJ�
 y	JsonAspNetCore.Views_Shared__ValidationScriptsPartial.Json �`GU� �	ComponentAspNetCore.Views_Shared__ValidationScriptsPartial.Component �^FH�
 w	UrlAspNetCore.Views_Shared__ValidationScriptsPartial.Url �\<q� ;�	ModelExpressionProviderAspNetCore.Views_Shared__ValidationScriptsPartial.ModelExpressionProvider �ZW[� %�		ExecuteAsyncAspNetCore.Views_Shared__ValidationScriptsPartial.ExecuteAsync	 �9C�I� ��u__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelperAspNetCore.Views_Shared__ValidationScriptsPartial.__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper �7Zr� ;�__tagHelperScopeManagerAspNetCore.Views_Shared__ValidationScriptsPartial.__tagHelperScopeManager �,]�� K�/__backed__tagHelperScopeManagerAspNetCore.Views_Shared__ValidationScriptsPartial.__backed__tagHelperScopeManager �+]|�  E�)__tagHelperStringValueBufferAspNetCore.Views_Shared__ValidationScriptsPartial.__tagHelperStringValueBuffer �)f /�__tagHelperRunnerAspNetCore.Views_Shared__ValidationScriptsPartial.__tagHelperRunner �'Wz~ C�'__tagHelperExecutionContextAspNetCore.Views_Shared__ValidationScriptsPartial.__tagHelperExecutionContext �%ap} 9�__tagHelperAttribute_1AspNetCore.Views_Shared__ValidationScriptsPartial.__tagHelperAttribute_1 �"b   $U �@�� �`��:�y
�
7	��,���?��G�g��P�U                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     U�R
 1qVerifyPasswordHashAuthSystem.Services.AuthService.VerifyPasswordHash	 �<U�Q
 1qCreatePasswordHashAuthSystem.Services.AuthService.CreatePasswordHash	 �,H�P
 %e	AuthenticateAuthSystem.Services.AuthService.Authenticate	 �F�O
 #c	AuthServiceAuthSystem.Services.AuthService.AuthService	 �A�N
 ]_contextAuthSystem.Services.AuthService._context �9�M
 #K		AuthServiceAuthSystem.Services.AuthService �K�L
 qRegisterAuthSystem.Services.IAuthorizationService.Register	 �S�K
 %yAuthenticateAuthSystem.Services.IAuthorizationService.Authenticate	 �N�J
 7_	IAuthorizationServiceAuthSystem.Services.IAuthorizationService �	6�I
 33AuthSystem.ServicesAuthSystem.Services �9�>
 U	HtmlAspNetCore.Views_Shared__Layout.Html �8P9�=
 U	JsonAspNetCore.Views_Shared__Layout.Json �6GC�<
 _	ComponentAspNetCore.Views_Shared__Layout.Component �4F7�;
 S	UrlAspNetCore.Views_Shared__Layout.Url �2<_�:
 ;{	ModelExpressionProviderAspNetCore.Views_Shared__Layout.ModelExpressionProvider �0WH�9
 %e	ExecuteAsyncAspNetCore.Views_Shared__Layout.ExecuteAsync	 �HC��8 w�7__Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelperAspNetCore.Views_Shared__Layout.__Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelper �FM��7 w�7__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelperAspNetCore.Views_Shared__Layout.__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper �EM�$�6 �?__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelperAspNetCore.Views_Shared__Layout.__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper �DQ�7�5 ��Q__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelperAspNetCore.Views_Shared__Layout.__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper �CZ�$�4 �?__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelperAspNetCore.Views_Shared__Layout.__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper �BQ_�3
 ;{__tagHelperScopeManagerAspNetCore.Views_Shared__Layout.__tagHelperScopeManager �7]p�2 K�__backed__tagHelperScopeManagerAspNetCore.Views_Shared__Layout.__backed__tagHelperScopeManager �6]j�1 E�__tagHelperStringValueBufferAspNetCore.Views_Shared__Layout.__tagHelperStringValueBuffer �4S�0
 /o__tagHelperRunnerAspNetCore.Views_Shared__Layout.__tagHelperRunner �2Wh�/ C�__tagHelperExecutionContextAspNetCore.Views_Shared__Layout.__tagHelperExecutionContext �0a_�.
 ;{__tagHelperAttribute_12AspNetCore.Views_Shared__Layout.__tagHelperAttribute_12 �-b_�-
 ;{__tagHelperAttribute_11AspNetCore.Views_Shared__Layout.__tagHelperAttribute_11 �,b_�,
 ;{__tagHelperAttribute_10AspNetCore.Views_Shared__Layout.__tagHelperAttribute_10 �+b]�+
 9y__tagHelperAttribute_9AspNetCore.Views_Shared__Layout.__tagHelperAttribute_9 �*b]�*
 9y__tagHelperAttribute_8AspNetCore.Views_Shared__Layout.__tagHelperAttribute_8 �)b]�)
 9y__tagHelperAttribute_7AspNetCore.Views_Shared__Layout.__tagHelperAttribute_7 �(b]�(
 9y__tagHelperAttribute_6AspNetCore.Views_Shared__Layout.__tagHelperAttribute_6 �'b]�'
 9y__tagHelperAttribute_5AspNetCore.Views_Shared__Layout.__tagHelperAttribute_5 �&b]�&
 9y__tagHelperAttribute_4AspNetCore.Views_Shared__Layout.__tagHelperAttribute_4 �%b]�%
 9y__tagHelperAttribute_3AspNetCore.Views_Shared__Layout.__tagHelperAttribute_3 �$b
H L ���^;z��	&�M	�x�,]�������m���hL0=L�'5������x
�
U	�	a��b�sXP���z*��f��@�+�
v	�	�	�3�<&�����:�E
�
/	�	9�h�"0�e
d	�	p�|rJi[
m	�	y��)|J�
�
	�	�K�I
���u`����!
�O�����ZN�C
�
	�	�B�7���
�
@��	�H�	J                     !E__tagHelperStringValueBuffer �/__tagHelperRunner � C__tagHelperExecutionContext �;__tagHelperAttribute_12 �;__tagHelperAttribute_11 �;__tagHelperAttribute_10 �9__tagHelperAttribute_9 �9__tagHelperAttribute_8 �9__tagHelperAttribute_7 �9__tagHelperAttribute_6 �9__tagHelperAttribute_5 �9__tagHelperAttribute_4 �9__tagHelperAttribute_3 �9__tagHelperAttribute_2 �9__tagHelperAttribute_1 �9__tagHelperAttribute_0 �r View%Authenticate �!AspNetCore �� Html#AuthService �;__tagHelperScopeManager �$K__backed__tagHelperScopeManager �F�__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper �8s__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper �:w__Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelper �H�__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper �;__tagHelperScopeManager �$K__backed__tagHelperScopeManager �!E__tagHelperStringValueBuffer �/__tagHelperRunner � C__tagHelperExecutionContext �9__tagHelperAttribute_4 �9__tagHelperAttribute_3 �9__tagHelperAttribute_2 �9__tagHelperAttribute_1 �9__tagHelperAttribute_0 � View_context �!AspNetCore �� Html �	#AuthService �>__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper �H�__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper �;__tagHelperScopeManager �$K__backed__tagHelperScopeManager �!E__tagHelperStringValueBuffer �/__tagHelperRunnerC__tagHelperExecutionContext~9__tagHelperAttribute_1}9__tagHelperAttribute_0|� Views_Shared__Validat%Authenticate �!AspNetCorez� �VerifyPasswordHashyJ CreatePasswordHashx%Authenticatew� RAuthServicev� B_contextu� 5AuthServicet� %Authenticates� IAuthorizationSe>__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper �H�__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper �!AspNetCorei	p 1HtmlhJsong	9 ComponentfUrle	p -Model:w__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper �!AspNetCorea	� 1Html`Json_	� Component^Url]	� -Model:w__Microsoft_AspNetCore_Mvc_TagHelpers_ScriptTagHelper �!AspNetCoreY
d jHtmlXJsonW
/ ComponentVUrlU
d -ModelExpressionProviderT
d ExecuteAsyncS-Views__ViewStartR!AspNetCoreQ
� lHtmlPJsonO
� ComponentNUrlM
� -ModelExpressionProviderL ExecuteAsyncK1Views__ViewImportsJ!AspNetCoreI��MSBuildAllProjectsH*YPkgMicrosoft_EntityFrameworkCore_ToolsG'SPkgMicrosoft_CodeAnalysis_AnalyzersF oMSBuildAllProjectsE-NuGetToolVersionD/NuGetProjectStyleC -NuGetPackageFoldersB-NuGetPackageRootA/ProjectAssetsFile@#RestoreTool?)RestoreSuccess>'ShowRequestId=J @RequestId<J 2ErrorViewModel;] AuthSystem.Models:Down9Up8� YLoginMigration7� FAuthSystem.Migrations6!BuildModel5=DataContextModelSnapshot47AuthSystem.Migrations3� Password2Username1/AuthenticateModel0E >AuthSystem.Models/-BuildTargetModel.)LoginMigration-7AuthSystem.Migrations,� 3Error+Privacy*� Index)� HomeController(_logger'� HomeController&9AuthSystem.Controllers%� ,Users$� "OnConfiguring#� DataContext")_configuration! DataContext 1AuthSystem.Helpersu NConfigure/ConfigureServicesu ConfigurationStartupStartup!AuthSystem� AutoMapperProfile1AuthSystem.Helpers� +CreateHostBuilderMainProgram!AuthSystemi dPasswordSalt%PasswordHash 
EmailUsernamei +Lastnamei FirstnameGdUser3AuthSystem.Entities
%Authenticate	� 
Index)AuthController%_authService)AuthController9AuthSystem.Controllers5AuthorizationService!AuthSystem   TargetFramework
	� rU��@���tfXJ<-�������~ukaN=,
����������vmcY�m5+"���������vZ>"������wbPC2!
�
�
�
�
�	�
�

o
]
Q
E
2
+
#



	�	��	�	�	�	�U	�	�	k	V	?	%��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         1VerifyPasswordHash �7IAuthorizationService �	Html �	Json �Component �Url �;ModelExpressionProvider �%ExecuteAsync �1Views_Shared_Errorb*YViews_Shared__ValidationScriptsPartial{5Views_Shared__Layout �1Views_Home_PrivacyZ-Views_Home_Indexj-Views_Auth_Index �-Views__ViewStartR1Views__ViewImportsJ� 	VerifRegister �	Users$Username1UsernameUserUrl �Url �UrlmUrleUrl]UrlUUrlMUp8+	TargetFrameworkStartupStartup'ShowRequestId=#RestoreTool?)RestoreSuccess>RequestId</ProjectAssetsFile@ProgramPrivacy**YPkgMicrosoft_EntityFrameworkCore_ToolsG'SPkgMicrosoft_CodeAnalysis_AnalyzersF%PasswordSalt%PasswordHashPassword2'OnConfiguring#-NuGetToolVersionD/NuGetProjectStyleC-NuGetPackageRootA3NuGetPackageFoldersB1MSBuildAllProjectsH1MSBuildAllProjectsE;ModelExpressionProvider �;ModelExpressionProvider �;ModelExpressionProviderl;ModelExpressionProviderd;ModelExpressionProvider\;ModelExpressionProviderT;ModelExpressionProviderLMain)LoginMigration7)LoginMigration-Lastname	Json �	Json �JsonoJsongJson_JsonWJsonO	Index)	Index3AuthSystem.Services �	Html �	Html �HtmlpHtmlhHtml`HtmlXHtmlP)HomeController()HomeController&GdFirstname%ExecuteAsync �%ExecuteAsync �%ExecuteAsynck%ExecuteAsyncc%ExecuteAsync[%ExecuteAsyncS%ExecuteAsyncK)ErrorViewModel;	Error+	EmailDown9=DataContextModelSnapshot4#DataContext"#DataContext    CreatePasswordHashx/CreateHostBuilder/ConfigureServicesConfigure'ConfigurationComponent �Component �ComponentnComponentfComponent^ComponentVComponentN-BuildTargetModel.!BuildModel5/AutoMapperProfile1CreatePasswordHash �/AuthSystem.Models:/AuthSystem.Models/   I � ���s2��c"���bD��{G����~Y2
�
�
�
[
9
	�	�	v	3��f!��_!��]��_#��a�}2��rC���h  �  a�
  �5  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\Sdk\Sdk.propse�
  �=  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Web\Sdk\Sdk.props�	  -  	appsettings.json'�	  E  	appsettings.Development.json)�	  I  	wwwroot\lib\jquery\LICENSE.txt1�	  Y  	wwwroot\lib\jquery\dist\jquery.min.map0�	  W  	wwwroot\lib\jquery\dist\jquery.min.js,� 	  O  	wwwroot\lib\jquery\dist\jquery.js3�	  ]  	wwwroot\lib\jquery-validation\LICENSE.mdD�~	    	wwwroot\lib\jquery-validation\dist\jquery.validate.min.js@�}	  w  	wwwroot\lib\jquery-validation\dist\jquery.validate.jsH�|
  �  	wwwroot\lib\jquery-validation\dist\additional-methods.min.jsC�{	  }  	wwwroot\lib\jquery-validation\dist\additional-methods.js@�z	  w  	wwwroot\lib\jquery-validation-unobtrusive\LICENSE.txtX�y
  �%  	wwwroot\lib\jquery-validation-unobtrusive\jquery.validate.unobtrusive.min.jsT�x
  �  	wwwroot\lib\jquery-validation-unobtrusive\jquery.validate.unobtrusive.js(�w	  G  	wwwroot\lib\bootstrap\LICENSE=�v	  q  	wwwroot\lib\bootstrap\dist\js\bootstrap.min.js.map9�u	  i  	wwwroot\lib\bootstrap\dist\js\bootstrap.min.js9�t	  i  	wwwroot\lib\bootstrap\dist\js\bootstrap.js.map5�s	  a  	wwwroot\lib\bootstrap\dist\js\bootstrap.jsD�r	    	wwwroot\lib\bootstrap\dist\js\bootstrap.bundle.min.js.map@�q	  w  	wwwroot\lib\bootstrap\dist\js\bootstrap.bundle.min.js@�p	  w  	wwwroot\lib\bootstrap\dist\js\bootstrap.bundle.js.map<�o	  o  	wwwroot\lib\bootstrap\dist\js\bootstrap.bundle.js?�n	  u  	wwwroot\lib\bootstrap\dist\css\bootstrap.min.css.map;�m	  m  	wwwroot\lib\bootstrap\dist\css\bootstrap.min.css;�l	  m  	wwwroot\lib\bootstrap\dist\css\bootstrap.css.map7�k	  e  	wwwroot\lib\bootstrap\dist\css\bootstrap.cssG�j
  �  	wwwroot\lib\bootstrap\dist\css\bootstrap-reboot.min.css.mapB�i	  {  	wwwroot\lib\bootstrap\dist\css\bootstrap-reboot.min.cssB�h	  {  	wwwroot\lib\bootstrap\dist\css\bootstrap-reboot.css.map>�g	  s  	wwwroot\lib\bootstrap\dist\css\bootstrap-reboot.cssD�f	    	wwwroot\lib\bootstrap\dist\css\bootstrap-grid.min.css.map@�e	  w  	wwwroot\lib\bootstrap\dist\css\bootstrap-grid.min.css@�d	  w  	wwwroot\lib\bootstrap\dist\css\bootstrap-grid.css.map<�c	  o  	wwwroot\lib\bootstrap\dist\css\bootstrap-grid.css�b	  1  	wwwroot\js\site.js�a	  3  	wwwroot\favicon.ico�`	  5  	wwwroot\css\site.css"�_	  ;  	Views\_ViewStart.cshtml$�^	  ?  	Views\_ViewImports.cshtml8�]	  g  	Views\Shared\_ValidationScriptsPartial.cshtml&�\	  C  	Views\Shared\_Layout.cshtml$�[	  ?  	Views\Shared\Error.cshtml$�Z	  ?  	Views\Home\Privacy.cshtml"�Y	  ;  	Views\Home\Index.cshtml"�X	  ;  	Views\Auth\Index.cshtml�W	  !  	Startup.cs"�V	  ;  	Services\AuthService.cs�U	  !  	Program.cs#�T	  =  	Models\ErrorViewModel.cs&�S	  C  	Models\AuthenticateModel.cs1�R	  Y  	Migrations\DataContextModelSnapshot.cs?�Q	  u  	Migrations\20210202153706_LoginMigration.Designer.cs6�P	  c  	Migrations\20210202153706_LoginMigration.cs!�O	  9  	Helpers\DataContext.cs'�N	  E  	Helpers\AutoMapperProfile.cs�M	  -  	Entities\User.cs(�L	  G  	Controllers\HomeController.cs(�K	  G  	Controllers\AuthController.cs"�J	  ;  	AuthorizationService.csB�I	  ] )bin\Release\netcoreapp3.1\AuthSystem.dllRelease|AnyCPU>�H	  Y %bin\Debug\netcoreapp3.1\AuthSystem.dllDebug|AnyCPU;�G	  m  	Microsoft.VisualStudio.Web.CodeGeneration.Design.�F	  S  	Microsoft.EntityFrameworkCore.Tools2�E	  [  	Microsoft.EntityFrameworkCore.SqlServer(�D	  G  	Microsoft.EntityFrameworkCore>�C	  s  	AutoMapper.Extensions.Microsoft.DependencyInjection�B	  !  	AutoMapper�A	  )  AuthSystem.sln+	 	 / +AuthSystem.csprojRelease|Any CPU)	 	 / 'AuthSystem.csprojDebug|Any CPU    Q x�\�C�5�
}	�	D��\�0�K�@�T� Q                 �.�A
  �O  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\Microsoft.NET.Build.Extensions\Microsoft.NET.Build.Extensions.targets�2�@
  �W  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Microsoft.Common.targets\ImportAfter\Microsoft.NET.Build.Extensions.targets��?
  �!  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Sdks\Microsoft.Docker.Sdk\build\Microsoft.Docker.targets�0�>
  �S  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Microsoft.Common.targets\ImportAfter\Microsoft.Docker.ImportAfter.targets��=
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\NuGet\NuGet.targets��<
  �1  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\v16.0\TeamTest\Microsoft.TeamTest.targetsp�;
  �S  ..\..\..\..\..\WINDOWS\Microsoft.NET\Framework\v4.0.30319\Microsoft.WorkflowBuildExtensions.targets��:
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.WorkflowBuildExtensions.targets]�9
  �-  ..\..\..\..\..\WINDOWS\Microsoft.NET\Framework\v4.0.30319\Microsoft.Xaml.targets��8
  �u  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.Xaml.targets�'�7
  �A  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\v16.0\CodeAnalysis\Microsoft.CodeAnalysis.targets~�6
  �o  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.NET.props"�5	  9  AuthSystem.csproj.user��4
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.Common.CurrentVersion.targets��3
  �y  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.Common.targets�"�2
  �7  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\Managed\Microsoft.Managed.DesignTime.targets�!�1
  �5  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\Managed\Microsoft.CSharp.DesignTime.targets��0
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Roslyn\Microsoft.Managed.Core.targets��/
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Roslyn\Microsoft.CSharp.Core.targets��.
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.CSharp.CurrentVersion.targets��-
  �	  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.Managed.Before.targets��,
  �y  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.CSharp.targets��+
  �y  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.NuGetOfflineCache.targets��*
  �}  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.EolTargetFrameworks.targets��)
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.RuntimeIdentifierInference.targets�
�(
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.TargetFrameworkInference.targets�
�'
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Sdk.ImportPublishProfile.targets��&
  �{  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.DefaultOutputPaths.targets   q a�q   ,   (   (�V� l� i                                                             �.�
  �O  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\Microsoft.NET.Build.Extensions\Microsoft.NET.Build.Extensions.targets�2�
  �W  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Microsoft.Common.targets\ImportAfter\Microsoft.NET.Build.Extensions.targets��
  �!  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Sdks\Microsoft.Docker.Sdk\build\Microsoft.Docker.targets�0� 
  �S  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Microsoft.Common.targets\ImportAfter\Microsoft.Docker.ImportAfter.targets�
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\NuGet\NuGet.targets�~
  �1  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\v16.0\TeamTest\Microsoft.TeamTest.targetsp}
  �S  ..\..\..\..\..\WINDOWS\Microsoft.NET\Framework\v4.0.30319\Microsoft.WorkflowBuildExtensions.targets�|
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.WorkflowBuildExtensions.targets]{
  �-  ..\..\..\..\..\WINDOWS\Microsoft.NET\Framework\v4.0.30319\Microsoft.Xaml.targets�z
  �u  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.Xaml.targets�'y
  �A  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\v16.0\CodeAnalysis\Microsoft.CodeAnalysis.targets~x
  �o  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.NET.props"w	  9  AuthSystem.csproj.user�v
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.Common.CurrentVersion.targets�u
  �y  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.Common.targets�"t
  �7  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\Managed\Microsoft.Managed.DesignTime.targets�!s
  �5  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\Managed\Microsoft.CSharp.DesignTime.targets�r
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Roslyn\Microsoft.Managed.Core.targets  y  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Roslyn\Microsoft.CSharp.Core.targets�p
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.CSharp.CurrentVersion.targets�o
  �	  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.Managed.Before.targets�n
  �y  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.CSharp.targets�m
  �y  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.NuGetOfflineCache.targets�l
  �}  ..\..\..\..\..\Program Fil� �~
  �3  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Publish\targets\DotNetCLIToolTargets\Microsoft.NET.Sdk.DotNetCLITool.targets��}
  �1  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Publish\targets\PublishTargets\Microsoft.NET.Sdk.Publish.FileSystem.targets�%�|
  �=  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Publish\targets\TransformTargets\Microsoft.NET.Sdk.Publish.TransformFiles.targets��{
  �)  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Publish\targets\CopyTargets\Microsoft.NET.Sdk.Publish.CopyFiles.targets    � �N�u�l�~
�
k	�	X�[�L�Q�O�mz�$ �                                                                                       ��%
  �}  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.DefaultAssemblyInfo.targets��$
  �w  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Sdk.BeforeCommon.targetsc�#
  �9  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\Sdk\Sdk.targetsg�"
  �A  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Web\Sdk\Sdk.targets��!
  �y  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Publish\targets\Microsoft.NET.Sdk.Publish.propsi� 
  �E  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Publish\Sdk\Sdk.props��
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Web.ProjectSystem\targets\Microsoft.NET.Sdk.Web.DefaultItems.props�)�
  �E  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\v16.0\TypeScript\Microsoft.TypeScript.Default.props��
  �!  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Web.ProjectSystem\targets\Microsoft.NET.Sdk.Web.ProjectSystem.propss�
  �Y  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Web.ProjectSystem\Sdk\Sdk.props��
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\Sdk\Sdk.Razor.StaticAssets.ProjectSystem.props��
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\build\netstandard2.0\Sdk.Razor.CurrentVersion.propsg�
  �A  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\Sdk\Sdk.propsw�
  �a  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Windows.props��
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.WindowsDesktop\targets\Microsoft.NET.Sdk.WindowsDesktop.props�
  �q  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.PackProjectTool.propsx�
  �c  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.PackTool.propsz�
  �g  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Sdk.CSharp.props��
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.WindowsSdkSupportedTargetPlatforms.props��
  �w  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.SupportedPlatforms.props�	�
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.SupportedTargetFrameworks.propsg�
  �A  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Microsoft.NETCoreSdk.BundledVersions.props� �
  �s  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Sdk.DefaultItems.propss�
  �Y  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Sdk.props��
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\NuGet\NuGet.props�	�
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\NuGet\16.0\Microsoft.NuGet.props�5�
  �]  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Imports\Microsoft.Common.props\ImportBefore\Microsoft.NuGet.ImportBefore.props��

  �  ..\..\..\.nuget\packages\microsoft.entityframeworkcore.design\5.0.2\build\netcoreapp3.0\Microsoft.EntityFrameworkCore.Design.props/�		  S  obj\AuthSystem.csproj.nuget.g.props}�
  �m  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Microsoft.Common.props    � ~�q���R�
y	�	0��9�$}��K�T�& �                                                                       ��z
  �-  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Publish\targets\CopyTargets\Microsoft.NET.Sdk.Publish.FilterFiles.targets�!�y
  �5  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Publish\targets\ComputeTargets\Microsoft.NET.Sdk.Publish.ComputeFiles.targets��x
  �}  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Publish\targets\PublishProfiles\FileSystem.pubxml��w
  �}  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Publish\targets\Microsoft.NET.Sdk.Publish.targetsk�v
  �I  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Publish\Sdk\Sdk.targets�"�u
  �7  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\Managed.Web\Microsoft.Web.Designtime.targets�.�t
  �O  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\v16.0\TypeScript\Microsoft.TypeScript.DotNetCore.targetsp�s
  �S  ..\..\..\..\..\Program Files (x86)\Microsoft SDKs\TypeScript\4.0\build\Microsoft.TypeScript.targetsd�r
  �;  ..\..\..\..\..\Program Files (x86)\Microsoft SDKs\TypeScript\versions\04.00.03.00.props�#�q
  �9  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\v16.0\TypeScript\Microsoft.TypeScript.targets��p
  �%  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Web.ProjectSystem\targets\Microsoft.NET.Sdk.Web.ProjectSystem.targetsu�o
  �]  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Web.ProjectSystem\Sdk\Sdk.targets�&�n
  �?  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\Razor\Microsoft.NET.Sdk.Razor.DesignTime.targets��m
  �'  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\build\netstandard2.0\Microsoft.NET.Sdk.Razor.Compilation.targets�+�l
  �I  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\build\netstandard2.0\Microsoft.NET.Sdk.Razor.MvcApplicationPartsDiscovery.targets�#�k
  �9  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\build\netstandard2.0\Microsoft.NET.Sdk.Razor.GenerateAssemblyInfo.targets��j
  �/  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\build\netstandard2.0\Microsoft.NET.Sdk.Razor.StaticWebAssets.targets��i
  �#  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\build\netstandard2.0\Microsoft.NET.Sdk.Razor.ScopedCss.targets��h
  �#  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\build\netstandard2.0\Microsoft.NET.Sdk.Razor.Component.targets��g
  �-  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\build\netstandard2.0\Microsoft.NET.Sdk.Razor.CodeGeneration.targets��f
  �+  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\build\netstandard2.0\Microsoft.NET.Sdk.Razor.Configuration.targets��e
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\build\netstandard2.0\Sdk.Razor.CurrentVersion.targetsi�d
  �E  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk.Razor\Sdk\Sdk.targets}�c
  �m  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\NuGet.Build.Tasks.Pack\build\NuGet.Build.Tasks.Pack.targetsy�b
  �e  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Windows.targets��a
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\analyzers\build\Microsoft.CodeAnalysis.NetAnalyzers.props�`
  �q  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Sdk.Analyzers.targets    � M��������
{	�	_�B�*�,�:�A�,�� �                                                                                                    j�_
  �G  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.ILLink.Tasks\Sdk\Sdk.propsx�^
  �c  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.ILLink.targets|�]
  �k  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Sdk.CSharp.targets��\
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.DefaultPackageConflictOverrides.targets��[
  �{  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.ConflictResolution.targets��Z
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.PreserveCompilationContext.targets��Y
  �u  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.PackProjectTool.targetsz�X
  �g  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.PackTool.targetsy�W
  �e  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Publish.targetsg�V
  �A  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Microsoft.NETCoreSdk.BundledCliTools.props��U
  �{  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.ObsoleteReferences.targetsz�T
  �g  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.CrossGen.targets~�S
  �o  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.ComposeStore.targets�
�R
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.GenerateSupportedRuntime.targets��Q
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.GenerateAssemblyInfo.targets��P
  �u  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.DesignerSupport.targets��O
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.DisableStandardFrameworkResolution.targets��N
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Sdk.FrameworkReferenceResolution.targets��M
  �w  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Sdk.DefaultItems.targets�	�L
  �  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.PackageDependencyResolution.targets|�K
  �k  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Sdk.Common.targetsu�J
  �]  ..\..\..\..\..\Program Files\dotnet\sdk\5.0.102\Sdks\Microsoft.NET.Sdk\targets\Microsoft.NET.Sdk.targets�
�I
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.Managed.After.targetse�H
  �=  ..\..\..\..\..\WINDOWS\Microsoft.NET\Framework\v4.0.30319\Microsoft.ServiceModel.targets�	�G
  �  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\Microsoft.ServiceModel.targets1�F	  W  obj\AuthSystem.csproj.nuget.g.targets=�E	  o  obj\AuthSystem.csproj.EntityFrameworkCore.targets�"�D
  �7  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VisualStudio\Managed.Web\Microsoft.Web.IISSupport.targets�-�C
  �M  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Microsoft.Common.targets\ImportAfter\Microsoft.Web.ImportAfter.targets�/�B
  �Q  ..\..\..\..\..\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Microsoft.Common.targets\ImportAfter\Microsoft.NuGet.ImportAfter.targets   ."/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.design\\3.1.4\\lib\\netcoreapp3.1\\dotnet-aspnet-codegenerator-design.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Antiforgery.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authentication.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authentication.Cookies.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authentication.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authentication.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authentication.OAuth.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authorization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authorization.Policy.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Components.Authorization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Components.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Components.Forms.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Components.Server.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Components.Web.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Connections.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.CookiePolicy.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Cors.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Cryptography.Internal.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Cryptography.KeyDerivation.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.DataProtection.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.DataProtection.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.DataProtection.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Diagnostics.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Diagnostics.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Diagnostics.HealthChecks.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcore   /app3.1\\Microsoft.AspNetCore.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.HostFiltering.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Hosting.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Hosting.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Hosting.Server.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Html.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.Connections.Common.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.Connections.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.Features.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.HttpOverrides.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.HttpsPolicy.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Identity.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Localization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Localization.Routing.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Metadata.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.ApiExplorer.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Cors.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.DataAnnotations.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Formatters.Json.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Formatters.Xml.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Localization.dll\"",
    "/reference:\"C:\\   0Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Razor.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.RazorPages.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.TagHelpers.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.ViewFeatures.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Razor.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.aspnetcore.razor.language\\3.1.0\\lib\\netstandard2.0\\Microsoft.AspNetCore.Razor.Language.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Razor.Runtime.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.ResponseCaching.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.ResponseCaching.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.ResponseCompression.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Rewrite.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Routing.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Routing.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.HttpSys.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.IIS.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.IISIntegration.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.Kestrel.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.Kestrel.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.Kestrel.Transport.Sockets.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Session.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.SignalR.Common.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.SignalR.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.SignalR.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.SignalR.Protocols.Json.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.StaticFiles.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.WebSockets.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetC   1ore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.WebUtilities.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.csharp\\3.3.1\\lib\\netstandard2.0\\Microsoft.CodeAnalysis.CSharp.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.csharp.workspaces\\3.3.1\\lib\\netstandard2.0\\Microsoft.CodeAnalysis.CSharp.Workspaces.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.common\\3.3.1\\lib\\netstandard2.0\\Microsoft.CodeAnalysis.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.razor\\3.1.0\\lib\\netstandard2.0\\Microsoft.CodeAnalysis.Razor.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.workspaces.common\\3.3.1\\lib\\netstandard2.0\\Microsoft.CodeAnalysis.Workspaces.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\Microsoft.CSharp.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.data.sqlclient\\2.0.1\\ref\\netcoreapp3.1\\Microsoft.Data.SqlClient.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.entityframeworkcore.abstractions\\5.0.2\\lib\\netstandard2.1\\Microsoft.EntityFrameworkCore.Abstractions.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.entityframeworkcore\\5.0.2\\lib\\netstandard2.1\\Microsoft.EntityFrameworkCore.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.entityframeworkcore.relational\\5.0.2\\lib\\netstandard2.1\\Microsoft.EntityFrameworkCore.Relational.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.entityframeworkcore.sqlserver\\5.0.2\\lib\\netstandard2.1\\Microsoft.EntityFrameworkCore.SqlServer.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.caching.abstractions\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.Caching.Abstractions.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.caching.memory\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.Caching.Memory.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.configuration.abstractions\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.Configuration.Abstractions.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.Binder.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.CommandLine.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.EnvironmentVariables.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.FileExtensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.Ini.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.Json.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.KeyPerFile.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.UserSecrets.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.Xml.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.dependencyinjection.abstractions\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.Dependen   2cyInjection.Abstractions.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.dependencyinjection\\5.0.1\\lib\\netstandard2.1\\Microsoft.Extensions.DependencyInjection.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Diagnostics.HealthChecks.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Diagnostics.HealthChecks.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.FileProviders.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.FileProviders.Composite.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.FileProviders.Embedded.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.FileProviders.Physical.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.FileSystemGlobbing.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Hosting.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Hosting.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Http.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Identity.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Identity.Stores.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Localization.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Localization.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.logging.abstractions\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.Logging.Abstractions.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.Configuration.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.Console.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.Debug.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.logging\\5.0.0\\lib\\netstandard2.1\\Microsoft.Extensions.Logging.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.EventLog.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.EventSource.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.TraceSource.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.ObjectPool.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Options.ConfigurationExtensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Micros   3oft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Options.DataAnnotations.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.options\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.Options.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.primitives\\5.0.0\\lib\\netcoreapp3.0\\Microsoft.Extensions.Primitives.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.WebEncoders.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.identitymodel.jsonwebtokens\\5.6.0\\lib\\netstandard2.0\\Microsoft.IdentityModel.JsonWebTokens.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.identitymodel.logging\\5.6.0\\lib\\netstandard2.0\\Microsoft.IdentityModel.Logging.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.identitymodel.protocols\\5.6.0\\lib\\netstandard2.0\\Microsoft.IdentityModel.Protocols.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.identitymodel.protocols.openidconnect\\5.6.0\\lib\\netstandard2.0\\Microsoft.IdentityModel.Protocols.OpenIdConnect.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.identitymodel.tokens\\5.6.0\\lib\\netstandard2.0\\Microsoft.IdentityModel.Tokens.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.JSInterop.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Net.Http.Headers.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\Microsoft.VisualBasic.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\Microsoft.VisualBasic.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.contracts\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.Contracts.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.core\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.Core.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.entityframeworkcore\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.templating\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.Templating.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.utils\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.Utils.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegenerators.mvc\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGenerators.Mvc.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\Microsoft.Win32.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Win32.Registry.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\mscorlib.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\netstandard.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\newtonsoft.json\\11.0.2\\lib\\netstandard2.0\\Newtonsoft.Json.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\nuget.frameworks\\4.7.0\\lib\\netstandard1.6\\NuGet.Frameworks.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.A   4pp.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.AppContext.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Buffers.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Collections.Concurrent.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Collections.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.collections.immutable\\5.0.0\\lib\\netstandard2.0\\System.Collections.Immutable.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Collections.NonGeneric.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Collections.Specialized.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.componentmodel.annotations\\5.0.0\\ref\\netstandard2.1\\System.ComponentModel.Annotations.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ComponentModel.DataAnnotations.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ComponentModel.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ComponentModel.EventBasedAsync.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ComponentModel.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ComponentModel.TypeConverter.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.composition.attributedmodel\\1.0.31\\lib\\netstandard1.0\\System.Composition.AttributedModel.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.composition.convention\\1.0.31\\lib\\netstandard1.0\\System.Composition.Convention.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.composition.hosting\\1.0.31\\lib\\netstandard1.0\\System.Composition.Hosting.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.composition.runtime\\1.0.31\\lib\\netstandard1.0\\System.Composition.Runtime.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.composition.typedparts\\1.0.31\\lib\\netstandard1.0\\System.Composition.TypedParts.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Configuration.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Console.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Data.Common.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Data.DataSetExtensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Data.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.Contracts.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.Debug.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.diagnostics.diagnosticsource\\5.0.1\\lib\\netstandard1.3\\System.Diagnostics.DiagnosticSource.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Diagnostics.EventLog.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.FileVersionInfo.dll\"",
      5 "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.Process.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.StackTrace.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.TextWriterTraceListener.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.Tools.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.TraceSource.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.Tracing.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Drawing.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Drawing.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Dynamic.Runtime.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Globalization.Calendars.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Globalization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Globalization.Extensions.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.identitymodel.tokens.jwt\\5.6.0\\lib\\netstandard2.0\\System.IdentityModel.Tokens.Jwt.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.Compression.Brotli.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.Compression.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.Compression.FileSystem.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.Compression.ZipFile.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.FileSystem.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.FileSystem.DriveInfo.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.FileSystem.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.FileSystem.Watcher.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.IsolatedStorage.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.MemoryMappedFiles.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.IO.Pipelines.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.Pipes.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.UnmanagedMemoryStream.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Linq.dll\"",
    "/refe   6rence:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Linq.Expressions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Linq.Parallel.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Linq.Queryable.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Memory.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Http.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.HttpListener.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Mail.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.NameResolution.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.NetworkInformation.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Ping.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Requests.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Security.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.ServicePoint.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Sockets.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.WebClient.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.WebHeaderCollection.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.WebProxy.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.WebSockets.Client.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.WebSockets.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Numerics.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Numerics.Vectors.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ObjectModel.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.DispatchProxy.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.Emit.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.Emit.ILGeneration.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.Emit.Lightweight.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Ref   7lection.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.Metadata.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.TypeExtensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Resources.Reader.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Resources.ResourceManager.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Resources.Writer.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.CompilerServices.Unsafe.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.CompilerServices.VisualC.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Handles.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.InteropServices.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.InteropServices.RuntimeInformation.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.InteropServices.WindowsRuntime.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Intrinsics.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Loader.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Numerics.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Serialization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Serialization.Formatters.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Serialization.Json.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Serialization.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Serialization.Xml.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Security.AccessControl.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Claims.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Cryptography.Algorithms.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Security.Cryptography.Cng.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Cryptography.Csp.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1   8\\System.Security.Cryptography.Encoding.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Cryptography.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Cryptography.X509Certificates.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Security.Cryptography.Xml.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Security.Permissions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Principal.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Security.Principal.Windows.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.SecureString.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ServiceModel.Web.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ServiceProcess.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.Encoding.CodePages.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.Encoding.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.Encoding.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.Encodings.Web.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.Json.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.RegularExpressions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Channels.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Overlapped.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Tasks.Dataflow.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Tasks.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Tasks.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Tasks.Parallel.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Thread.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.ThreadPool.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Timer.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Transactions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Transactions.Local.dll\"",
    "/reference:\"C:\\Program Files\\dotne    t\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ValueTuple.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Web.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Web.HttpUtility.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Windows.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Windows.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.Linq.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.ReaderWriter.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.Serialization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.XDocument.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.XmlDocument.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.XmlSerializer.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.XPath.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.XPath.XDocument.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\WindowsBase.dll\"",
    "/debug+",
    "/debug:portable",
    "/filealign:512",
    "/optimize-",
    "/out:obj\\Debug\\netcoreapp3.1\\AuthSystem.dll",
    "/target:exe",
    "/warnaserror-",
    "/utf8output",
    "/deterministic+",
    "/langversion:8.0",
    "/analyzer:\"C:\\Program Files\\dotnet\\sdk\\5.0.102\\Sdks\\Microsoft.NET.Sdk.Web\\analyzers\\cs\\Microsoft.AspNetCore.Analyzers.dll\"",
    "/analyzer:\"C:\\Program Files\\dotnet\\sdk\\5.0.102\\Sdks\\Microsoft.NET.Sdk.Web\\analyzers\\cs\\Microsoft.AspNetCore.Mvc.Analyzers.dll\"",
    "/analyzer:\"C:\\Program Files\\dotnet\\sdk\\5.0.102\\Sdks\\Microsoft.NET.Sdk.Web\\analyzers\\cs\\Microsoft.AspNetCore.Components.Analyzers.dll\"",
    "/analyzer:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.analyzers\\2.9.4\\analyzers\\dotnet\\cs\\Microsoft.CodeAnalysis.Analyzers.dll",
    "/analyzer:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.analyzers\\2.9.4\\analyzers\\dotnet\\cs\\Microsoft.CodeAnalysis.CSharp.Analyzers.dll",
    "/analyzer:C:\\Users\\askop\\.nuget\\packages\\microsoft.entityframeworkcore.analyzers\\5.0.2\\analyzers\\dotnet\\cs\\Microsoft.EntityFrameworkCore.Analyzers.dll",
    "AuthorizationService.cs",
    "Controllers\\AuthController.cs",
    "Controllers\\HomeController.cs",
    "Entities\\User.cs",
    "Helpers\\AutoMapperProfile.cs",
    "Helpers\\DataContext.cs",
    "Migrations\\20210202153706_LoginMigration.cs",
    "Migrations\\20210202153706_LoginMigration.Designer.cs",
    "Migrations\\DataContextModelSnapshot.cs",
    "Models\\AuthenticateModel.cs",
    "Models\\ErrorViewModel.cs",
    "Program.cs",
    "Services\\AuthService.cs",
    "Startup.cs",
    "obj\\Debug\\netcoreapp3.1\\.NETCoreApp,Version=v3.1.AssemblyAttributes.cs",
    "obj\\Debug\\netcoreapp3.1\\AuthSystem.AssemblyInfo.cs",
    "obj\\Debug\\netcoreapp3.1\\AuthSystem.RazorAssemblyInfo.cs",
    "/warnaserror+:NU1605"
  ],
  "ProjectReferences": [],
  "Configuration": "Debug",
  "TargetPath": "bin\\Debug\\netcoreapp3.1\\AuthSystem.dll",
  "BuildErrors": [],
  "BuildException": null
}Debug|AnyCPU   :\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.design\\3.1.4\\lib\\netcoreapp3.1\\dotnet-aspnet-codegenerator-design.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Antiforgery.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authentication.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authentication.Cookies.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authentication.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authentication.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authentication.OAuth.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authorization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Authorization.Policy.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Components.Authorization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Components.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Components.Forms.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Components.Server.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Components.Web.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Connections.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.CookiePolicy.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Cors.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Cryptography.Internal.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Cryptography.KeyDerivation.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.DataProtection.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.DataProtection.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.DataProtection.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Diagnostics.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Diagnostics.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Diagnostics.HealthChecks.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Micros   ;oft.AspNetCore.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.HostFiltering.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Hosting.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Hosting.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Hosting.Server.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Html.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.Connections.Common.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.Connections.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Http.Features.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.HttpOverrides.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.HttpsPolicy.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Identity.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Localization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Localization.Routing.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Metadata.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.ApiExplorer.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Cors.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.DataAnnotations.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Formatters.Json.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Formatters.Xml.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Localization.dll\"",
    "/reference:\"C:\\Program Files\   <\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.Razor.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.RazorPages.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.TagHelpers.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Mvc.ViewFeatures.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Razor.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.aspnetcore.razor.language\\3.1.0\\lib\\netstandard2.0\\Microsoft.AspNetCore.Razor.Language.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Razor.Runtime.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.ResponseCaching.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.ResponseCaching.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.ResponseCompression.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Rewrite.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Routing.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Routing.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.HttpSys.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.IIS.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.IISIntegration.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.Kestrel.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.Kestrel.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Server.Kestrel.Transport.Sockets.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.Session.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.SignalR.Common.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.SignalR.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.SignalR.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.SignalR.Protocols.Json.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.StaticFiles.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.WebSockets.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3   =.1.10\\ref\\netcoreapp3.1\\Microsoft.AspNetCore.WebUtilities.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.csharp\\3.3.1\\lib\\netstandard2.0\\Microsoft.CodeAnalysis.CSharp.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.csharp.workspaces\\3.3.1\\lib\\netstandard2.0\\Microsoft.CodeAnalysis.CSharp.Workspaces.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.common\\3.3.1\\lib\\netstandard2.0\\Microsoft.CodeAnalysis.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.razor\\3.1.0\\lib\\netstandard2.0\\Microsoft.CodeAnalysis.Razor.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.workspaces.common\\3.3.1\\lib\\netstandard2.0\\Microsoft.CodeAnalysis.Workspaces.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\Microsoft.CSharp.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.data.sqlclient\\2.0.1\\ref\\netcoreapp3.1\\Microsoft.Data.SqlClient.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.entityframeworkcore.abstractions\\5.0.2\\lib\\netstandard2.1\\Microsoft.EntityFrameworkCore.Abstractions.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.entityframeworkcore\\5.0.2\\lib\\netstandard2.1\\Microsoft.EntityFrameworkCore.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.entityframeworkcore.relational\\5.0.2\\lib\\netstandard2.1\\Microsoft.EntityFrameworkCore.Relational.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.entityframeworkcore.sqlserver\\5.0.2\\lib\\netstandard2.1\\Microsoft.EntityFrameworkCore.SqlServer.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.caching.abstractions\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.Caching.Abstractions.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.caching.memory\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.Caching.Memory.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.configuration.abstractions\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.Configuration.Abstractions.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.Binder.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.CommandLine.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.EnvironmentVariables.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.FileExtensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.Ini.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.Json.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.KeyPerFile.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.UserSecrets.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Configuration.Xml.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.dependencyinjection.abstractions\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.DependencyInjection.Ab   >stractions.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.dependencyinjection\\5.0.1\\lib\\netstandard2.1\\Microsoft.Extensions.DependencyInjection.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Diagnostics.HealthChecks.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Diagnostics.HealthChecks.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.FileProviders.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.FileProviders.Composite.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.FileProviders.Embedded.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.FileProviders.Physical.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.FileSystemGlobbing.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Hosting.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Hosting.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Http.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Identity.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Identity.Stores.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Localization.Abstractions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Localization.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.logging.abstractions\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.Logging.Abstractions.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.Configuration.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.Console.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.Debug.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.logging\\5.0.0\\lib\\netstandard2.1\\Microsoft.Extensions.Logging.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.EventLog.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.EventSource.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Logging.TraceSource.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.ObjectPool.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Options.ConfigurationExtensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore   ?.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.Options.DataAnnotations.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.options\\5.0.0\\lib\\netstandard2.0\\Microsoft.Extensions.Options.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.extensions.primitives\\5.0.0\\lib\\netcoreapp3.0\\Microsoft.Extensions.Primitives.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Extensions.WebEncoders.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.identitymodel.jsonwebtokens\\5.6.0\\lib\\netstandard2.0\\Microsoft.IdentityModel.JsonWebTokens.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.identitymodel.logging\\5.6.0\\lib\\netstandard2.0\\Microsoft.IdentityModel.Logging.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.identitymodel.protocols\\5.6.0\\lib\\netstandard2.0\\Microsoft.IdentityModel.Protocols.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.identitymodel.protocols.openidconnect\\5.6.0\\lib\\netstandard2.0\\Microsoft.IdentityModel.Protocols.OpenIdConnect.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.identitymodel.tokens\\5.6.0\\lib\\netstandard2.0\\Microsoft.IdentityModel.Tokens.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.JSInterop.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Net.Http.Headers.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\Microsoft.VisualBasic.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\Microsoft.VisualBasic.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.contracts\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.Contracts.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.core\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.Core.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.entityframeworkcore\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.templating\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.Templating.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegeneration.utils\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGeneration.Utils.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\microsoft.visualstudio.web.codegenerators.mvc\\3.1.4\\lib\\netstandard2.0\\Microsoft.VisualStudio.Web.CodeGenerators.Mvc.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\Microsoft.Win32.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\Microsoft.Win32.Registry.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\mscorlib.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\netstandard.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\newtonsoft.json\\11.0.2\\lib\\netstandard2.0\\Newtonsoft.Json.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\nuget.frameworks\\4.7.0\\lib\\netstandard1.6\\NuGet.Frameworks.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\   @\ref\\netcoreapp3.1\\System.AppContext.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Buffers.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Collections.Concurrent.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Collections.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.collections.immutable\\5.0.0\\lib\\netstandard2.0\\System.Collections.Immutable.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Collections.NonGeneric.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Collections.Specialized.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.componentmodel.annotations\\5.0.0\\ref\\netstandard2.1\\System.ComponentModel.Annotations.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ComponentModel.DataAnnotations.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ComponentModel.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ComponentModel.EventBasedAsync.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ComponentModel.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ComponentModel.TypeConverter.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.composition.attributedmodel\\1.0.31\\lib\\netstandard1.0\\System.Composition.AttributedModel.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.composition.convention\\1.0.31\\lib\\netstandard1.0\\System.Composition.Convention.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.composition.hosting\\1.0.31\\lib\\netstandard1.0\\System.Composition.Hosting.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.composition.runtime\\1.0.31\\lib\\netstandard1.0\\System.Composition.Runtime.dll",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.composition.typedparts\\1.0.31\\lib\\netstandard1.0\\System.Composition.TypedParts.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Configuration.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Console.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Core.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Data.Common.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Data.DataSetExtensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Data.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.Contracts.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.Debug.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.diagnostics.diagnosticsource\\5.0.1\\lib\\netstandard1.3\\System.Diagnostics.DiagnosticSource.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Diagnostics.EventLog.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.FileVersionInfo.dll\"",
    "/reference:\   A"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.Process.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.StackTrace.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.TextWriterTraceListener.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.Tools.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.TraceSource.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Diagnostics.Tracing.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Drawing.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Drawing.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Dynamic.Runtime.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Globalization.Calendars.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Globalization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Globalization.Extensions.dll\"",
    "/reference:C:\\Users\\askop\\.nuget\\packages\\system.identitymodel.tokens.jwt\\5.6.0\\lib\\netstandard2.0\\System.IdentityModel.Tokens.Jwt.dll",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.Compression.Brotli.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.Compression.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.Compression.FileSystem.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.Compression.ZipFile.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.FileSystem.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.FileSystem.DriveInfo.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.FileSystem.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.FileSystem.Watcher.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.IsolatedStorage.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.MemoryMappedFiles.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.IO.Pipelines.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.Pipes.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.IO.UnmanagedMemoryStream.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Linq.dll\"",
    "/reference:\"C:\\Pr   Bogram Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Linq.Expressions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Linq.Parallel.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Linq.Queryable.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Memory.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Http.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.HttpListener.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Mail.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.NameResolution.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.NetworkInformation.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Ping.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Requests.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Security.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.ServicePoint.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.Sockets.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.WebClient.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.WebHeaderCollection.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.WebProxy.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.WebSockets.Client.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Net.WebSockets.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Numerics.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Numerics.Vectors.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ObjectModel.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.DispatchProxy.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.Emit.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.Emit.ILGeneration.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.Emit.Lightweight.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.Extens   Cions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.Metadata.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Reflection.TypeExtensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Resources.Reader.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Resources.ResourceManager.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Resources.Writer.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.CompilerServices.Unsafe.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.CompilerServices.VisualC.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Handles.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.InteropServices.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.InteropServices.RuntimeInformation.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.InteropServices.WindowsRuntime.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Intrinsics.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Loader.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Numerics.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Serialization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Serialization.Formatters.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Serialization.Json.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Serialization.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Runtime.Serialization.Xml.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Security.AccessControl.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Claims.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Cryptography.Algorithms.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Security.Cryptography.Cng.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Cryptography.Csp.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Secur   Dity.Cryptography.Encoding.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Cryptography.Primitives.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Cryptography.X509Certificates.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Security.Cryptography.Xml.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Security.Permissions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.Principal.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Security.Principal.Windows.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Security.SecureString.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ServiceModel.Web.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ServiceProcess.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.Encoding.CodePages.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.Encoding.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.Encoding.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.Encodings.Web.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.Json.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Text.RegularExpressions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Channels.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Overlapped.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Tasks.Dataflow.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Tasks.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Tasks.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Tasks.Parallel.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Thread.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.ThreadPool.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Threading.Timer.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Transactions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Transactions.Local.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Micr    osoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.ValueTuple.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Web.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Web.HttpUtility.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Windows.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.AspNetCore.App.Ref\\3.1.10\\ref\\netcoreapp3.1\\System.Windows.Extensions.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.Linq.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.ReaderWriter.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.Serialization.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.XDocument.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.XmlDocument.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.XmlSerializer.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.XPath.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\System.Xml.XPath.XDocument.dll\"",
    "/reference:\"C:\\Program Files\\dotnet\\packs\\Microsoft.NETCore.App.Ref\\3.1.0\\ref\\netcoreapp3.1\\WindowsBase.dll\"",
    "/debug+",
    "/debug:portable",
    "/filealign:512",
    "/optimize+",
    "/out:obj\\Release\\netcoreapp3.1\\AuthSystem.dll",
    "/target:exe",
    "/warnaserror-",
    "/utf8output",
    "/deterministic+",
    "/langversion:8.0",
    "/analyzer:\"C:\\Program Files\\dotnet\\sdk\\5.0.102\\Sdks\\Microsoft.NET.Sdk.Web\\analyzers\\cs\\Microsoft.AspNetCore.Analyzers.dll\"",
    "/analyzer:\"C:\\Program Files\\dotnet\\sdk\\5.0.102\\Sdks\\Microsoft.NET.Sdk.Web\\analyzers\\cs\\Microsoft.AspNetCore.Mvc.Analyzers.dll\"",
    "/analyzer:\"C:\\Program Files\\dotnet\\sdk\\5.0.102\\Sdks\\Microsoft.NET.Sdk.Web\\analyzers\\cs\\Microsoft.AspNetCore.Components.Analyzers.dll\"",
    "/analyzer:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.analyzers\\2.9.4\\analyzers\\dotnet\\cs\\Microsoft.CodeAnalysis.Analyzers.dll",
    "/analyzer:C:\\Users\\askop\\.nuget\\packages\\microsoft.codeanalysis.analyzers\\2.9.4\\analyzers\\dotnet\\cs\\Microsoft.CodeAnalysis.CSharp.Analyzers.dll",
    "/analyzer:C:\\Users\\askop\\.nuget\\packages\\microsoft.entityframeworkcore.analyzers\\5.0.2\\analyzers\\dotnet\\cs\\Microsoft.EntityFrameworkCore.Analyzers.dll",
    "AuthorizationService.cs",
    "Controllers\\AuthController.cs",
    "Controllers\\HomeController.cs",
    "Entities\\User.cs",
    "Helpers\\AutoMapperProfile.cs",
    "Helpers\\DataContext.cs",
    "Migrations\\20210202153706_LoginMigration.cs",
    "Migrations\\20210202153706_LoginMigration.Designer.cs",
    "Migrations\\DataContextModelSnapshot.cs",
    "Models\\AuthenticateModel.cs",
    "Models\\ErrorViewModel.cs",
    "Program.cs",
    "Services\\AuthService.cs",
    "Startup.cs",
    "obj\\Release\\netcoreapp3.1\\.NETCoreApp,Version=v3.1.AssemblyAttributes.cs",
    "obj\\Release\\netcoreapp3.1\\AuthSystem.AssemblyInfo.cs",
    "obj\\Release\\netcoreapp3.1\\AuthSystem.RazorAssemblyInfo.cs",
    "/warnaserror+:NU1605"
  ],
  "ProjectReferences": [],
  "Configuration": "Release",
  "TargetPath": "bin\\Release\\netcoreapp3.1\\AuthSystem.dll",
  "BuildErrors": [],
  "BuildException": null
}Release|AnyCPU   + ��]+                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           /�1 K	AuthSystem.RazorAssemblyInfo.cs)�ǿ����2�0 Q	AuthSystem.RazorAssemblyInfo.cache)�ǿ��ʕ*�/ A	AuthSystem.AssemblyInfo.cs)�ǿ��F->�. i	.NETCoreApp,Version=v3.1.AssemblyAttributes.cs)�ǿ��