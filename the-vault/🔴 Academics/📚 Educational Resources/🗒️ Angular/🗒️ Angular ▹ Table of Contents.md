---
author: 
publisher: 
published: 
tags:
  - 🔴-academics/📚-educational-resources/discipline/computer-science/framework/angular
  - 🔴-academics/📚-educational-resources/name/angular
  - study-note
cards-deck: Default::Computer Science
created: 2023-09-03 08:46
updated: 2023-10-21T12:38
---

Look at the code below…
```html
<header>
  <nav
    class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3"
  >
    <div class="container">
      <a class="navbar-brand" [routerLink]="['/']">WebApplicationAngular</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target=".navbar-collapse"
        aria-label="Toggle navigation"
        [attr.aria-expanded]="isExpanded"
        (click)="toggle()"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div
        class="navbar-collapse collapse d-sm-inline-flex justify-content-end"
        [ngClass]="{ show: isExpanded }"
      >
        <ul class="navbar-nav flex-grow">
          <li
            class="nav-item"
            [routerLinkActive]="['link-active']"
            [routerLinkActiveOptions]="{ exact: true }"
          >
            <a class="nav-link text-dark" [routerLink]="['/']">Home</a>
          </li>
          <li class="nav-item" [routerLinkActive]="['link-active']">
            <a class="nav-link text-dark" [routerLink]="['/counter']"
              >Counter</a
            >
          </li>
          <li class="nav-item" [routerLinkActive]="['link-active']">
            <a class="nav-link text-dark" [routerLink]="['/fetch-data']"
              >Fetch data</a
            >
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>
```


**[Front]**: What is @ViewChild in Angular? #card 
**[Back]**: @ViewChild is a decorator in Angular used to establish a connection between a child component or a DOM element and a parent component. It provides direct access to the child's methods, properties, and so on. Example: `@ViewChild('bindingInput') bindingInput!: ElementRef;`
^1686474890646

**[Front]**: What is ElementRef in Angular? #card 
**[Back]**: ElementRef is a wrapper around a native DOM element. It is used with @ViewChild to access a specific DOM element and its properties/methods in the component. Example: `@ViewChild('bindingInput') bindingInput!: ElementRef;`
^1686474890650

**[Front]**: How does property binding work in Angular? #card 
**[Back]**: Property binding in Angular allows you to bind a DOM property to a component property. Example: `<button [disabled]="isUnchanged">Save</button>` binds the disabled property of the button to the isUnchanged property of the component.
^1686474890654

**[Front]**: What is a template reference variable in Angular? #card 
**[Back]**: A template reference variable in Angular is a way to give a name to a DOM element within a template. This can be used to access the properties of the named element directly. Example: `<input type="text" value="Sarah" #bindingInput>` creates a reference variable named `bindingInput` for the input element.
^1686474890658

**[Front]**: What's the difference between HTML attribute and DOM property? #card 
**[Back]**: HTML attributes are the default values that come from the HTML itself and do not change once the page is loaded. DOM properties, on the other hand, are the actual values that the browser uses while rendering and interacting with the webpage, and they can change dynamically.
^1686474890662

**[Front]**: How to access the HTML attribute and DOM property in Angular? #card
**[Back]**: You can use ElementRef with @ViewChild to get the reference to a DOM element, then use getAttribute('value') for HTML attribute and .value for DOM property. Example: `console.warn('HTML attribute value: ' + this.bindingInput.nativeElement.getAttribute('value')); console.warn('DOM property value: ' + this.bindingInput.nativeElement.value);`
^1686474890666



