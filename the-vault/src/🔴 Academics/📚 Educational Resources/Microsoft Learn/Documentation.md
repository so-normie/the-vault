---
created: 2023-10-07 15:19
updated: 2023-10-31T14:46
---

---
author: 
publisher: 
published: 
tags: [🔴-academics/📚-educational-resources/name/microsoft-learn, study-note] 
cards-deck: Default::Computer Science
---

# Microsoft Learn

## Documentation

### **Learn**

#### **Azure**

##### **Internet of Things**

**In this article**
1. [Prerequisites](https://learn.microsoft.com/en-us/azure/azure-maps/how-to-use-map-control#prerequisites)
2. [Create a new map in a web page](https://learn.microsoft.com/en-us/azure/azure-maps/how-to-use-map-control#create-a-new-map-in-a-web-page)
3. [Localizing the map](https://learn.microsoft.com/en-us/azure/azure-maps/how-to-use-map-control#localizing-the-map)
4. [Azure Government cloud support](https://learn.microsoft.com/en-us/azure/azure-maps/how-to-use-map-control#azure-government-cloud-support)
5. [JavaScript frameworks](https://learn.microsoft.com/en-us/azure/azure-maps/how-to-use-map-control#javascript-frameworks)
6. [Next steps](https://learn.microsoft.com/en-us/azure/azure-maps/how-to-use-map-control#next-steps)

**Prerequisites**
To use the Map Control in a web page, you must have one of the following prerequisites:
- An [Azure Maps account](https://learn.microsoft.com/en-us/azure/azure-maps/quick-demo-map-app#create-an-azure-maps-account)
- A [subscription key](https://learn.microsoft.com/en-us/azure/azure-maps/quick-demo-map-app#get-the-subscription-key-for-your-account)
- Obtain your Azure Active Directory (AAD) credentials with [authentication options](https://learn.microsoft.com/en-us/javascript/api/azure-maps-control/atlas.authenticationoptions)

**Use the Azure Maps map control**

What is the Map Control in regards to Azure Maps? #card 
A client-side JavaScript library that allows you to render maps and embedded Azure Maps functionality into your web or mobile application.
^1686557064416

**Front**: What is a client-side JavaScript library? #card
**Back**: A client-side JavaScript library is a collection of pre-written JavaScript code that you can use to add features and functionality to your website. It runs in the user’s web browser, rather than on the server.
^1686557064422

**Front**: What is a server-side library? #card
**Back**: A server-side library is a collection of pre-written code that runs on the server that hosts your website. It can be used to perform tasks that need to be done on the server, such as accessing a database or processing user input.
^1686557064426

**Front**: What is the difference between a client-side and a server-side library? #card
**Back**: The main difference between a client-side and a server-side library is where the code is executed. Client-side libraries run in the user’s web browser, while server-side libraries run on the server that hosts your website.
^1686557064430


**Front**: Give an example of a server-side library being used in a Node.js application. #card
**Back**: Here’s an example of the express library being used to create a simple web server in Node.js:
```js
const express = require('express');
const app = express();
app.get('/', (req, res) => {
  res.send('Hello World!');
});
app.listen(3000, () => {
  console.log('Server listening on port ^1686557098200
3000');
});
```

**Front**: Give an example of a client-side library being used in an HTML file. #card 
**Back**: Here’s an example of the jQuery library being used to add interactivity to a web page:
```html
<!DOCTYPE html>
<html>
<head>
  <title>My Page</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<button id="myButton">Click me!</button>
<script>
  $('#myButton').click(() => {
    alert('Button clicked!');
  });
</script>
</body>
</html>
```
^1686557064436

Create a new map in a web page

##### **Quickstart: Create an interactive search map with Azure Maps**

**In this article**
1. [Prerequisites](https://learn.microsoft.com/en-us/azure/azure-maps/quick-demo-map-app#prerequisites)
2. [Create an Azure Maps account](https://learn.microsoft.com/en-us/azure/azure-maps/quick-demo-map-app#create-an-azure-maps-account)
3. [Get the subscription key for your account](https://learn.microsoft.com/en-us/azure/azure-maps/quick-demo-map-app#get-the-subscription-key-for-your-account)
4. [Download and update the Azure Maps demo](https://learn.microsoft.com/en-us/azure/azure-maps/quick-demo-map-app#download-and-update-the-azure-maps-demo)
5. [Open the demo application](https://learn.microsoft.com/en-us/azure/azure-maps/quick-demo-map-app#open-the-demo-application)
6. [Clean up resources](https://learn.microsoft.com/en-us/azure/azure-maps/quick-demo-map-app#clean-up-resources)
7. [Next steps](https://learn.microsoft.com/en-us/azure/azure-maps/quick-demo-map-app#next-steps)

**Prerequisites**

**Create an Azure Maps account**

What are the general values and things I must enter when creating an Azure resource? #card 
- The *subscription* tier
- The *Resource group* name
- The *Name* if your new Azure Maps account
- The *Pricing tier* for this account.
- Read the *License* and *Privacy Statement*, then select the checkbox to accept the terms.
![Image | 400](https://learn.microsoft.com/en-us/azure/azure-maps/media/shared/create-account.png)
^1686542164425

**Get the subscription key for your account**

For QuickStart and dev purposes, which authentication should I use? #card 
Use your **Primary key**
^1686542164429

Once your Azure Maps account is successfully created, retrieve the subscription key that enables you to query the Maps APIs.
1. Open your Maps account in the portal.
2. In the settings section, select **Authentication**.
3. Copy the **Primary Key** and save it locally to use later in this tutorial.
[![Screenshot showing your Azure Maps subscription key in the Azure portal | 500](https://learn.microsoft.com/en-us/azure/azure-maps/media/quick-demo-map-app/get-key.png)](https://learn.microsoft.com/en-us/azure/azure-maps/media/quick-demo-map-app/get-key.png#lightbox)

Which key should I be using for my release/production environment? #card 
- Should be using no keys. The preferred approach for any production environment is to use the **Azure Active Directory** for authentication.
> [!Info]+ Note
This quickstart uses the Shared Key authentication approach for demonstration purposes, but the preferred approach for any production environment is to use Azure Active Directory authentication.
^1686542164433

**Download and update the Azure Maps demo**

**Front**: What is Shared Key authorization in Azure? #card 
**Back**: Shared Key authorization is a method of authorizing requests to Azure Storage services. Every request made against a storage service must be authorized, unless the request is for a blob or container resource that has been made available for public or signed access. One option for authorizing a request is by using Shared Key.
^1686542164436

**Front**: What are the two types of authorization for Azure Storage account requests? #card 
**Back**: Azure Storage account requests can be authorized with either Azure Active Directory (Azure AD) credentials or by using the account access key for Shared Key authorization.
^1686542164440

**Front**: Which type of authorization is recommended by Microsoft for Azure Storage account requests? #card 
**Back**: Of the two types of authorization, Azure AD provides superior security and ease of use over Shared Key authorization and is recommended by Microsoft.
^1686542164443

**Front**: What is the difference between the primary and secondary keys in regards to Shared Key authorization in Azure? #card 
**Back**: In Azure, when you create a storage account, Azure generates two 512-bit storage account access keys for that account. These keys can be used to authorize access to data in your storage account via Shared Key authorization. The primary key and secondary key are two different keys that are generated by Azure for the same purpose. The primary key is used for read-write operations and the secondary key is used for read-only operations.
^1686542164447




##### **Active Directory**

##### **Cloud Adoption Framework**

###### **Operating model**

------
**Govern**


-----

**Naming overview**

**In this article**
1. [Guidance](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/govern/resource-consistency/naming#guidance)
2. [Enforce](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/govern/resource-consistency/naming#enforce)
3. [Audit](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/govern/resource-consistency/naming#audit)

What is one example in how I should be naming my resources in azure? #card 
![_Diagram 1: Components of an Azure resource name from [Define your naming convention](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming)._ | 400](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/_images/ready/resource-naming.png)
_Diagram 1: Components of an Azure resource name from [Define your naming convention](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming)._

**Guidance**

**Enforce**

**Audit**

---

-----

###### **Fundamentals**

-----

**What is Azure Active Directory?**

**In this article**
1. [Who uses Azure AD?](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-whatis#who-uses-azure-ad)
2. [What are the Azure AD licenses?](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-whatis#what-are-the-azure-ad-licenses)
3. [Which features work in Azure AD?](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-whatis#which-features-work-in-azure-ad)
4. [Terminology](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-whatis#terminology)
5. [Next steps](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-whatis#next-steps)

What is Azure Active Directory (Azure AD)? #card 
A cloud-based identity and access management service.
^1686655478874

What does Azure AD allow you to do? #card 
Access external resources, such as Microsoft 365, the Azure portal, and thousands of other SaaS applications.
^1686655478880


**Who uses Azure AD?**


**Overview**

**In this article**
1. [Create a new tenant for your organization](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-access-create-new-tenant#create-a-new-tenant-for-your-organization)
2. [Your user account in the new tenant](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-access-create-new-tenant#your-user-account-in-the-new-tenant)
3. [Clean up resources](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-access-create-new-tenant#clean-up-resources)
4. [Next steps](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-access-create-new-tenant#next-steps)

**What are the Azure AD licenses?**


**Which features work in Azure AD?**


**Terminology**

**Q**: What is an Identity? #card 
**A**: A thing that can get authenticated. An identity can be a user with a username and password. Identities also include applications or other servers that might require authentication through secret keys or certificates.
^1686656285687

**Q**: What is an Account? #card
**A**: An identity that has data associated with it. You can’t have an account without an identity.
^1686656285692

**Q**: What is an Azure AD account? #card
**A**: An identity created through Azure AD or another Microsoft cloud service, such as Microsoft 365. Identities are stored in Azure AD and accessible to your organization’s cloud service subscriptions. This account is also sometimes called a Work or school account.
^1686656285695

**Q**: What is an Account Administrator? #card
**A**: This classic subscription administrator role is conceptually the billing owner of a subscription. This role enables you to manage all subscriptions in an account. For more information, see Azure roles, Azure AD roles, and classic subscription administrator roles.
^1686656285699

**Q**: What is a Service Administrator? #card
**A**: This classic subscription administrator role enables you to manage all Azure resources, including access. This role has the equivalent access of a user who is assigned the Owner role at the subscription scope. For more information, see Azure roles, Azure AD roles, and classic subscription administrator roles.
^1686656285702

**Q**: What is an Owner? #card
**A**: This role helps you manage all Azure resources, including access. This role is built on a newer authorization system called Azure role-based access control (Azure RBAC) that provides fine-grained access management to Azure resources. For more information, see Azure roles, Azure AD roles, and classic subscription administrator roles.
^1686656285705

**Q**: What is an Azure AD Global administrator? #card
**A**: This administrator role is automatically assigned to whomever created the Azure AD tenant. You can have multiple Global administrators, but only Global administrators can assign administrator roles (including assigning other Global administrators) to users. For more information about the various administrator roles, see Administrator role permissions in Azure Active Directory.
^1686656285709

**Q**: What is an Azure subscription? #card
**A**: Used to pay for Azure cloud services. You can have many subscriptions and they’re linked to a credit card.
^1686656285712

**Q**: What is an Azure tenant? #card
**A**: A dedicated and trusted instance of Azure AD. The tenant is automatically created when your organization signs up for a Microsoft cloud service subscription. These subscriptions include Microsoft Azure, Microsoft Intune, or Microsoft 365. An Azure tenant represents a single organization.
^1686656285716

**Q**: What is a Single tenant? #card
**A**: Azure tenants that access other services in a dedicated environment are considered single tenant.
^1686656285719

**Q**: What is a Multi-tenant? #card
**A**: Azure tenants that access other services in a shared environment, across multiple organizations, are considered multi-tenant.
^1686656285723

**Q**: What is an Azure AD directory? #card
**A**: Each Azure tenant has a dedicated and trusted Azure AD directory. The Azure AD directory includes the tenant’s users, groups, and apps and is used to perform identity and access management functions for tenant resources.
^1686656285727

**Q**: What is a Custom domain? #card
**A**: Every new Azure AD directory comes with an initial domain name, for example domainname.onmicrosoft.com. In addition to that initial name, you can also add your organization’s domain names. Your organization’s domain names include the names you use to do business and your users use to access your organization’s resources, to the list. Adding custom domain names helps you to create user names that are familiar to your users, such as alain@contoso.com.
^1686656285731

**Q**: What is a Microsoft account (also called MSA)? #card
**A**: Personal accounts that provide access to your consumer-oriented Microsoft products and cloud services. These products and services include Outlook, OneDrive, Xbox LIVE, or Microsoft 365. Your Microsoft account is created and stored in the Microsoft consumer identity account system that’s run by Microsoft.
^1686656285734


-----

**Quickstart: Create a new tenant in Azure Active Directory**

You can do all of your {administrative tasks} using the Azure {Active Directory (Azure AD)} portal, including creating a new tenant for your organization.
^1686655478885

**In this article**
1. [Create a new tenant for your organization](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-access-create-new-tenant#create-a-new-tenant-for-your-organization)
2. [Your user account in the new tenant](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-access-create-new-tenant#your-user-account-in-the-new-tenant)
3. [Clean up resources](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-access-create-new-tenant#clean-up-resources)
4. [Next steps](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-access-create-new-tenant#next-steps)

You can do all of your {administrative tasks} using the Azure {Active Directory (Azure AD)} portal, including creating a new tenant for your organization.
^1686655478885

**Create a new tenant for your organization**

Your new {tenant} represents your organization and helps you to manage a specific instance of Microsoft cloud services for your internal and external users.
^1686671395113

What if I am having trouble creating an Azure AD or Azure AD B2C tenant? #card 
>[!info]+ **Note**
> If you're unable to create Azure AD or Azure AD B2C tenant, review your user settings page to ensure that tenant creation isn't switched off. If tenant creation is switched off, ask your _Global Administrator_ to assign you a _Tenant Creator_ role.
^1686671197345

What is the difference between Azure Active Directory or Azure Active Directory (B2C)? #card 
- Azure Active Directory (Azure AD) is an identity and access management (IAM) service that you and your team use to manage your Azure resources and to control your application. [On the other hand, **Azure AD B2C** is a customer identity and access management (CIAM) service that your tenants’ users use to access the solution](https://learn.microsoft.com/en-us/azure/architecture/guide/multitenant/service/azure-ad-b2c)[1](https://learn.microsoft.com/en-us/azure/architecture/guide/multitenant/service/azure-ad-b2c).
- The main difference between the two is the **management of users**. For normal Azure AD, users’ data is stored in “Users” which you can see on the Users blade on Azure Active Directory. [However, for B2C tenant, users’ data is stored in both “Users” and B2C extension app, which you can see in App registrations](https://stackoverflow.com/questions/51628730/whats-the-difference-between-azure-ad-b2c-tenant-and-normal-azure-ad-tenant)[2](https://stackoverflow.com/questions/51628730/whats-the-difference-between-azure-ad-b2c-tenant-and-normal-azure-ad-tenant).
^1686671636763

What are some features of Azure AD B2C? #card 
Azure AD B2C has several features that enable you to provide a fully custom identity experience for your customers in your applications. Some of these features include:
- [**Directory**: The directory is where Azure AD B2C stores your users’ credentials, profile data, and your application registrations](https://learn.microsoft.com/en-us/azure/active-directory-b2c/technical-overview)[1](https://learn.microsoft.com/en-us/azure/active-directory-b2c/technical-overview).
- **Application registrations**: Register your web, mobile, and native applications with Azure AD B2C to enable identity management. [You can also register any APIs you want to protect with Azure AD B2C](https://learn.microsoft.com/en-us/azure/active-directory-b2c/technical-overview)[1](https://learn.microsoft.com/en-us/azure/active-directory-b2c/technical-overview).
- **User flows and custom policies**: Create identity experiences for your applications with built-in user flows and fully configurable custom policies. User flows help you quickly enable common identity tasks like sign-up, sign-in, and profile editing. [Custom policies let you build complex identity workflows unique to your organization](https://learn.microsoft.com/en-us/azure/active-directory-b2c/technical-overview)[1](https://learn.microsoft.com/en-us/azure/active-directory-b2c/technical-overview).
- [**Sign-in options**: Azure AD B2C offers various sign-up and sign-in options for users of your applications such as username, email, and phone sign-in; social identity providers like Facebook, LinkedIn, or Twitter; external identity providers with standard identity protocols like OAuth 2.0, OpenID Connect, and more](https://learn.microsoft.com/en-us/azure/active-directory-b2c/technical-overview)[1](https://learn.microsoft.com/en-us/azure/active-directory-b2c/technical-overview).
^1686671636768

Can you explain everything you just told me as if I were a child? Also, if you could, please tell me when I should use which one for my application. #card 
- Sure! Azure Active Directory (Azure AD) and Azure AD B2C are like big lists that keep track of who is allowed to use certain things. Think of it like a treehouse club where only members are allowed inside. Azure AD is for people who work for the same company and need to use the same things, like computers and programs. Azure AD B2C is for people who use a company’s app or website, like when you play a game or shop online.
- When you’re building an app or website for people to use, you can choose which one to use depending on who will be using it. If it’s for people who work for the same company, you can use Azure AD. If it’s for people outside the company, like customers, you can use Azure AD B2C.
^1686671636771

Explain to me like a child what features of Azure AD B2C make it unique and more suited for application that serve customers and users not within my company? #card 
- Azure AD B2C has some special features that make it really good for apps and websites that lots of people use. It’s like a big list that keeps track of who is allowed to use the app or website and what they can do.
- One of the things it can do is let people sign in using their email, username or even their phone number. It can also let people sign in using their social media accounts like Facebook or Twitter. This makes it easy for people to use the app or website without having to remember another password.
- Another thing it can do is help keep people’s information safe. It has special tools that can tell if someone is trying to pretend to be someone else and stop them from getting in.
- These are just some of the things that make Azure AD B2C really good for apps and websites that lots of people use.
^1686671636775


**To create a new tenant**

What are the general steps to creating a new tenant for Azure AD? #card 
1. Sign in to your organization's [Azure portal](https://portal.azure.com/).
2. From the Azure portal menu, select **Azure Active Directory**
3. On the overview page, select **Manage tenants**
4. Select **Create**.
    ![Azure Active Directory - Overview page - Create a tenant](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/media/active-directory-access-create-new-tenant/azure-ad-portal.png)
5. On the Basics tab, select the type of tenant you want to create, either **Azure Active Directory** or **Azure Active Directory (B2C)**.
6. Select **Next: Configuration** to move on to the Configuration tab.
7. On the Configuration tab, enter the following information:
    ![Azure Active Directory - Create a tenant page - configuration tab](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/media/active-directory-access-create-new-tenant/azure-ad-create-new-tenant.png)
    - Type your desired Organization name (for example _Contoso Organization_) into the **Organization name** box.
    - Type your desired Initial domain name (for example _Contosoorg_) into the **Initial domain name** box.
    - Select your desired Country/Region or leave the _United States_ option in the **Country or region** box.
8. Select **Next: Review + Create**. Review the information you entered and if the information is correct, select **create**.
^1686671197350

**Your user account in the new tenant**

When you create a new Azure AD tenant, you become the {first user} of that tenant. As the first user, you're {automatically assigned} the {Global Administrator role}.
^1686671197354

Regarding accounts and Azure AD, what is something important to do? #card 
> [!Warning]+ Warning
> Ensure your directory has at least two accounts with global administrator privileges assigned to them. This will help in the case that one global administrator is locked out. For more detail see the article, Manage emergency access accounts in Azure AD.
^1686671197357

**Clean up resources**

If you're not going to continue to use this application, what steps can you use to delete the tenant? #card 
- Ensure that you're signed in to the directory that you want to delete through the **Directory + subscription** filter in the Azure portal. Switch to the target directory if needed.
- Select **Azure Active Directory**, and then on the **Contoso - Overview** page, select **Delete directory**.
    The tenant and its associated information are deleted.
    ![Overview page, with highlighted Delete directory button](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/media/active-directory-access-create-new-tenant/azure-ad-delete-new-tenant.png)
^1686671395118

**Next steps**
- Change or add other domain names, see [How to add a custom domain name to Azure Active Directory](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/add-custom-domain)
- Add users, see [Add or delete a new user](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/add-users-azure-active-directory)
- Add groups and members, see [Create a basic group and add members](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal)
- Learn about [Azure role-based access control (Azure RBAC)](https://learn.microsoft.com/en-us/azure/role-based-access-control/overview) and [Conditional Access](https://learn.microsoft.com/en-us/azure/active-directory/conditional-access/overview) to help manage your organization's application and resource access.
- Learn about Azure AD, including [basic licensing information, terminology, and associated features](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-whatis).


-----

**Compare Active Directory to Azure Active Directory**

What is the general differences between Azure Active Directory and Azure Directory? #card 
- Azure Active Directory is the next evolution of identity and access management solutions for the cloud. Microsoft introduced Active Directory Domain Services in Windows 2000 to give organizations the ability to manage multiple on-premises infrastructure components and systems using a single identity per user.
- Azure AD takes this approach to the next level by providing organizations with an Identity as a Service (IDaaS) solution for all their apps across cloud and on-premises.
^1686655478888

What is the difference between Active Directory and Azure Directory, explain to me like I am child. #card 
- Active Directory and Azure Active Directory are both like big lists of people that help you sign in to things like computers and websites. But they are different! Active Directory is used for computers that are all in the same place, like in an office building. [Azure Active Directory is used for things on the internet, like websites and apps](https://blog.quest.com/active-directory-vs-azure-active-directory-what-you-need-to-know/)
^1686655478892

Can Azure Directory be used in applications I deploy to be used as a form of authentication so users using my deployed apps can access my Azure resources on the cloud? #card 
Yes! Azure Active Directory (Azure AD) is a cloud-based service that can be used to manage user access to your applications and resources on the cloud. You can use Azure AD to authenticate users and control their access to your Azure resources. This means that people using your apps can sign in with their Azure AD account and access the resources you have given them permission to use.
^1686655478896



-----

#### **Azure Data Studio**

#### **Quickstart: Use Azure Data Studio to connect and query SQL Server**

##### **In this article**

What does this article talk about?
#card 
Shows how to use Azure Data Studio to connect to SQL Server, and then use Transact-SQL (T-SQL) statements to create the *TutorialDB* used in Azure Data Studio tutorials

##### **Prerequisites**



#### **Resource Manager**

##### **Management**

###### **Manage Azure resource groups by using the Azure portal**

**In this article**
1. [What is a resource group](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#what-is-a-resource-group)
2. [Create resource groups](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#create-resource-groups)
3. [List resource groups](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#list-resource-groups)
4. [Open resource groups](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#open-resource-groups)
5. [Delete resource groups](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#delete-resource-groups)
6. [Deploy resources to a resource group](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#deploy-resources-to-a-resource-group)
7. [Move to another resource group or subscription](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#move-to-another-resource-group-or-subscription)
8. [Lock resource groups](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#lock-resource-groups)
9. [Tag resource groups](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#tag-resource-groups)
10. [Export resource groups to templates](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#export-resource-groups-to-templates)
11. [Manage access to resource groups](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#manage-access-to-resource-groups)
12. [Next steps](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#next-steps)

**What is a resource group**

Where can I go to access and manage my Azure resource groups? #card 
Use the [Azure portal](https://portal.azure.com/)
^1686492548316

What is a resource group? #card 
A container that holds related resources for an Azure solution.
^1686492548320

What are some ways that resource groups can be implemented? #card 
- Manage all resources for a solution.
- Manage only those resources that you wan to manage as a group.
^1686492548324

What is a good rule thumb when dealing with resource groups? #card 
Add resources that share the same life-cycle.
^1686492548327

**List resource groups**

**Open resource groups**

**Delete resource groups**

**Deploy resources to a resource group**

**Move to another resource group or subscription**
  
**Lock resource groups**

What is locking a resource group in the context of Azure? #card 
Locking prevents other users in your organization from accidentally deleting or modifying critical resources, such as Azure subscription, resource group, or resource.
1. Open the resource group you want to lock. See [Open resource groups](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#open-resource-groups)
2. In the left pane, select **Locks**.
3. To add a lock to the resource group, select **Add**.
4. Enter **Lock name**, **Lock type**, and **Notes**. The lock types include **Read-only**, and **Delete**.
   ![lock azure resource group](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/media/manage-resource-groups-portal/manage-resource-groups-add-lock.png)
^1686542164451

**Tag resource groups**
How do you apply tags to resource groups to logically organize your assets? #card 
You can apply tags to resource groups and resources to logically organize your assets. For information, see [Using tags to organize your Azure resources](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/tag-resources-portal).
^1686542164455

**Export resource groups to templates**
How to export resource groups as templates? #card 
For information about exporting templates, see [Single and multi-resource export to template - Portal](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/export-template-portal).
^1686542164458

**Manage access to resource groups**
How do you manage access to resource groups? #card 
[Azure role-based access control (Azure RBAC)](https://learn.microsoft.com/en-us/azure/role-based-access-control/overview) is the way that you manage access to resources in Azure. For more information, see [Assign Azure roles using the Azure portal](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-portal).
^1686542164461

#### .**NET**

##### **Fundamentals**

###### **Make HTTP requests with the HttpClient class**

**HttpClient Class**

What is the httpClient Class do? #card-reverse 
Provides a class for sending HTTP requests and receiving HTTP responses from a resource identified by a URI.
^1685640518422

What does URI stand for? #card 
**U**niform **R**esource **I**dentifier
^1685640518435

What is a URI?
A string of characters that identifies a resources on the web either by using location, name or both. It allows uniform identification of the resources.

What are some of the differences between URL and URI? #card 

How should I visualize the relationship between URL and URI? #card 
![[the-vault/assets/images/geeks-for-geeks-uri-vs-url.png|150]]
^1685640518446

What do HTTP endpoints commonly return? #card 
JavaScript Object Notation (JSON)
^1685640518455




##### **C# guide**

###### **Asynchronous programming** 

**Asynchronous file access (C#)**

By using the async feature in C#, you can call into async methods without {using callbacks or splitting your code across multiple methods or lambda expressions}. 
^1685640518466

What are some of the benefits of asynchrony to file access calls? #card 
- <span class="spoiler">Asynchrony makes UI applications more responsive because the UI thread that launches the operation can perform other work. If the UI thread must execute code that takes a long time (for example, more than 50 milliseconds), the UI may freeze until the I/O is complete and the UI thread can again process keyboard and mouse input and other events.</span>
- <span class="spoiler">Asynchrony improves the scalability of ASP.NET and other server-based applications by reducing the need for threads. If the application uses a dedicated thread per response and a thousand requests are being handled simultaneously, a thousand threads are needed. Asynchronous operations often don't need to use a thread during the wait. They use the existing I/O completion thread briefly at the end.</span>
- <span class="spoiler">The latency of a file access operation might be very low under current conditions, but the latency may greatly increase in the future. For example, a file may be moved to a server that's across the world.</span>
- <span class="spoiler">The added overhead of using the Async feature is small.</span>
- <span class="spoiler">Asynchronous tasks can easily be run in parallel.</span>
^1685640518473

**Use appropriate classes**

For fine control over the file I/O operations, use the {[FileStream](https://learn.microsoft.com/en-us/dotnet/api/system.io.filestream)} class, which has an option that causes asynchronous I/O to occur at the operating system level.
^1685640518481



#### **SQL**

##### **SQL Server 2022**

###### ****
