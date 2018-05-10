# Store Next Door

Store Next Door is a two sided marketplace for people looking for a more accessible, less involved, short-term storage process for their things. 

### Webiste URL

https://store-next-door.herokuapp.com/

### Github

https://github.com/genmauger/store_next_door

## Considering Problem

I started this project by generating ideas. Writing lists of problems and pain points for users of normal storage, things that I could target to make my service stand out. I also considered a very early MVP and a more efficient, pared down user experience. These were quite rough drafts and can be found at the following google docs link:
https://docs.google.com/document/d/1CHdD3q9esR1k3Fx-aoYdCenTJCElzAXyEz_7pCFpxLI/edit?usp=sharing


## Problem

People store their belongings for a variety of reasons: they may be moving, or redecorating, or perhaps even emptying out a room temporarily while housing someone. The storage industry itself is a multibillion dollar one, however, users often face difficulty finding nearby storage faciltiies, transporting their goods, and finding storage in a short timeframe. 

On the other side of the market, there are people with unused space that could be utilised as an asset, perhaps a secondary or passive source of income. 

## Solution

Store Next Door aims to bring these two markets together, to provide a less complex, more affordable short-term storage solution for our customers, while also providing storage providers with an opportunity to turn an unused asset into a source of income.

In the process of creating this application, there were a few ethical issues to consider. Most of these were problems relating to security:

- Revealing exact storage addresses before customers had committed to purchasing storage from a property.
- Our duty to our users. What happens if a customer gets their things stolen, or doesn't come to pick up their things?

Some proposed solutions for these problems included:

- Restricting address data to suburb only, revealing the exact address via email after storage had been purchased, much in the same vein as Airbnb.
- Placing a range of optional extras that may be added to a property. Options such as:
- - Lockable
- - Customer lockable
- - 24/7 access
- - Storage type
- - Temperature control

## Trello

Rails Project board: https://trello.com/b/BHkPqB8t/short-term-storage-rails-project-board

User Stories: https://trello.com/b/SpmnKdko/short-term-storage-rails-project-user-stories-board

I found Trello to be an invaluable tool for all aspects of my project. I used it extensively for the planning and development stages. Trello allowed me to visually represent my user stories, my MVP, ERD, gems, as well as any extra tasks I needed to take care of. Trello also allowed me to keep focused on my current tasks.

My Trello board was extensive, as I used it break each task down into easily manageable steps I could focus on. For this reason, I ended up using two Trello boards. One for a planning overview, and one board to plan out all aspects of users stories.

![](/app/assets/images/screenshot/overview_trello_1.png)

![](/app/assets/images/screenshot/overview_trello_3.png)

## User Stories

![](/app/assets/images/screenshot/user_figma_screenshot1.png)

![](/app/assets/images/screenshot/user_figma_screenshot2.png)

My user stories included four target markets: buyers, sellers, viewers, and admins.

When generating the user stories, I stuck to using the "As a <>, I want <>, so that <>" format. I found this format helped me narrow down the wants and needs of my users. Putting myself through the journey of the user was also a great way to detect issues that could arise with my app, and things that I should focus on to make using the website a pleasant experience for my users.

When it came time to plan out our users stories, I did a lot of planning as part of a group with several other students: Cameo, Drew, and Glenn. As a group we pitched the ideas for our applications to each other. This gave us the chance to give constructive feedback on each others ideas. I found that by running my ideas past a group, and then discussing user stories, helped me think about a lot of ideas for my project I headn't considered, as well as the solutions to some problems I was unsure about tackling.

#### Buyers

Buyers included those people who want to purchase short term storage space. They want to be able to sign in to and browse the website, and also make purchases. 

- As a buyer I want to be able to see if the location is locakble or secure so that I know my items will be safe
- As a buyer, I want to find somewhere that is cheap for me to store my excess things, so that I can save money
- As a buyer, I want to be able to see the size of the space so that I know whether my possessions will fit
- As a buyer, I'd like to be able to view a map listing the closest storage spaces to me, so that the search process becomes easier
- As a buyer, I want to know what sort of access (i.e vehicle access) is available at the storage site, so that I know if it will be easy to move my things there
- As a buyer, I want to know the location of the storage facility, so that I will know how far away it is
- As a buyer, I want to know if the storage location has external access so that I can access my things without disturbing the owner, or needing to contact them before I arrive
- As a buyer I would like to know what times I will have access to my possessions, so that I can reduce the hassle of having to message the owner
- As a buyer I would like to be able cancel a booking, so that I am able to change my mind if I don't require the space anymore

#### Sellers

Sellers included those people who want to list their facility as containing storage space for hire. A seller can have multiple storage facilities, and a facility may have multiple spaces for hire.

- As a home owner with a house that is too big for me, I would like to help others by offering my spare room to store stuff, so that I can make use of my extra space
- As a seller, I want to show my space is available, but I don't want my exact address showing up, so that I know my privacy is being protected.
- As the owner of an empty property, I want the ability to allow users to store things at my house, so that I can generate a secondary passive stream of income.
- As a person with storage, I want to be able to arrange with the buyers how they can access their things, so that I save myself last minute hassles
- As a seller, I want to know what I can do if somebody drops off their things and refuses to pay/is late paying/is uncontactable, so that I know my legal interests are being protected
- As a seller, I want to know in advance when people are coming to pick stuff up from my property, so that I can organise to be there if necessary
- As a seller, I would like the ability to list what times the user will be able to access their things, so that I will save time/hassle organising pickup/drop off times

#### Viewers

Viewers included those people who have not signed up for the website and are just browsing properties and storage spaces. Some of the user stories for viewers are as follows:

- As a viewer, I want to be able to see if there is any storage available near me without logging in so that I know if the website is worth signing up for
- As a viewer, I want to be able to access most of the website without signing up, so that I can see if I would like to join

#### Owner/Admin

The owner/admin is the one who organises the space for buyers and sellers to come together.

- As the website owner, I want to ensure the that website is safe and secure for users so that their address is not advertised to the public.
- As an admin I want to be able to delete users that violate the terms and conditions (i.e. steal other people's possessions), so that I am able to keep my users safe 
- As an admin, I want the ability to post important information regarding our website to users, so that users can be kept up to date on important announcements
- As an admin, I want to be able to contact any user easily when necessary, so that I am able to let them know any important information

##MVP

The MVP I am aiming to complete is as follows:
- User is able to sign up
- Account can operate as one for both buyer and seller
- Ability to list facility/storage
- Can search for facilities (and in immediate area)
- Select property/space from a list
- Book property in for certain dates
- Process payment for property 
- Send booking confirmation email
- Can post reviews of storage


## User Journeys

I mocked up two user journeys for my application. I found the process of mapping out the user journeys to be a very important part of planning. Mapping out my journeys allowed me to determine the path a user takes through my website. This, in turn really helped me plan out the necessary wirframes for my webite.

User journeys also made it easier for me to actually design how I wanted users to interact with my wesbite. In planning my website, I was focused on making the journey through my website as easily as possible. This was to address a pain point I noticed during my research, the confusing and lengthy process usually associated with booking a storage space. I wanted to make the process similarly easy for the seller.

### Pain Points

I also considered some pain points of the buyer and seller, to help uncover areas to focus on when creating my app. Things that could set me apart from other similar services.

#### Buyers
- Want cheaper costs than provided by official storage places
- Want the process to be quick and easy (few steps, no quotes etc)
- I want my things to be looked after properly - they mean a lot to me! 
- Storage not available nearby
- Actually moving things to storage

#### Sellers

- What to do with spare space?
- An asset that isn’t producing money 
- For those people looking for alternative/passive streams of income

### Journey of buyer

![](/app/assets/images/screenshot/user_journey_buyers.png)

### Journey of seller

![](/app/assets/images/screenshot/user_journey_sellers.png)

## Wireframes

Using the planning done in my users journeys allowed me to determine most of the necessary webpages I would need for my website. This made the wireframing process much easier. 

I wanted to keep my website design quite simple. This was partly to keep my website simple for my users, but also to make use of the easy repeat functionality of ruby on rails. As much as possible, I wanted to use partials, and make a simple layout that could be easily reused for most webpages.

## Figma

Figma board: https://www.figma.com/file/RYCYpvrTBurBQQNwGKIIVTe7/Short-Term-Storage

After I finished the wireframe mock ups for my website, I was ready to properly design my website pages. The first step was to create a mood board:

### Mood Board

I drew inspiration for the design and layout of website from two main websites. Uber and Airbnb.

I was inspired by the simple and effective layouts of the Airbnb show layout and show pages. They way the displayed data was simple and informative. I was also interested in looking at how they dealt with security issues like the ones I was facing in my design.

I was inspired by Uber's extremely cimple user journey and booking process. Having seen the app used many times, I was inspired by the simple and effective booking process. I wanted to make the user journey through my website as efficient as possible, while still offering them all the necessary information needed to make an informed decision.

![](/app/assets/images/screenshot/mood_board1.png)

![](/app/assets/images/screenshot/mood_board2.png)

## Wireframes

With my mood board completed, I then moved on to designing the wireframes for my website. 

![](/app/assets/images/screenshot/figma_mobile_wireframe.png)

![](/app/assets/images/screenshot/figma_desktop_wireframe.png)

The wireframing process allowed me to visualise the the layout of my website. Without distractions of color or images, I could really focus on what should go where on the webpage, and think about how the user would interact with my application.

## Colors

I tried a few different color combinations before I began desgning. At first I was attracted to the warmer colors of websites likes Airbnb, and YouCamp. However, I don't believe these colors really fit in with my business. I felt I was more focused on providing a functional service, which didn't I felt would require colors that felt less emotional. Although, in the future I would be interested in revising this, as people often have a very strong emotional attchment to their possessions, that could possibly be reflected more accurately in different colors. 

![](/app/assets/images/screenshot/colors_schemes.png)

In the end I was inspired to create a website designed around a simple green and blue design. I felt this was properly businesslike. However, after discussing my design, I decided to reduce the use of green to just a call to action button. As my website would contain a lot of pictures, all involving many different colors, a simpler color palette would be better in the long run.

![](/app/assets/images/screenshot/final_colors.png)

## Final Designs

Some of the final designs for my webpage can be found below. I have designed layouts for both mobile and desktop. I wanted to keep the design for my website as repsonsive as possible. It will scale easily, and does not require a slide out navbar.

![](/app/assets/images/screenshot/final_mobile_design.png)

![](/app/assets/images/screenshot/final_desktop_design.png)

### ERD

From the start of the project I was very conscious of how important a good ERD design would be to the suvvess of my project. I found it easier to complete my design process before designing my ERB. This was because while completing my user journeys, and my wireframes, I had had plenty of opportunity to consider how users would be interact with my website, and the paths they might take. 

I was aware that the ERD could get complicated quite quickly. I tried to keep it lightweight and easily understandable. I tried to keep the flow of my relationships logical so that accessing data would be easy.

## Database Tables

![](/app/assets/images/screenshot/schema.png)

## Models

    Hello

    Users
    - email:text
    - password:text

    Profiles
    - first_name:text
    - last_name:text
    - mobile:text
    - street_address:text
    - suburb:text
    - postcode:text
    - country:text
    - mobile:text
    - image_data:text
    - user:references

    StorageFacilities
    - street_address:text
    - suburb:text
    - postcode:text
    - state:text
    - country:text
    - unlisted_at:timestamp
    - longitude:text
    - latitude:text
    - image_data:text
    - user:references

    FacilitySpace
    - height:text
    - length:text
    - width:text
    - type:text
    - rate:decimal
    - image_data:text
    - storage_facilities:references

    FacilityReview (Join Table)
    - review:text
    - FacilityStorage:id
    - Booking:id

    Booking
    - booker_id:id
    - user_id:id
    - storage_space:id
    - payment_info:id
    - date_from:time
    - date_to:time

    Invoices
    - user_id:id
    - description:text
    - currency:text
    - payment_date:text
    - token:text


## Pain Points

Throughout this project, I experience a my fair share of challenges and obstacles to overcome. 

Alot of issues I experienced were caused by two badly named tables: 
- Storage Facility
- Facility Storage
Facility storage actually belonged to storage facility. This, at times, caused a lot of confusing when making queries, and also creating routes. Trying to make sense of a route called 'storage_facility_facility_storage'. Naming conventions are extremly important. 

I experienced a couple issues when merging with git. The upside is, I'm understanding more and more what to do to prevent these issues from happening. The same goes for pushing to Heroku. I made sure to deploy my app quite early on, and ensure it was working. However, I failed to check my build for a day and experienced some issues when trying to push again. From this I learned that it is extremely important to deploying early in the project, and keep checking everything is working on both sides of production. 

Finally, I often myself thinking during this project how useful testing would be. Checking for errors manually is a tedius process, and it is likely I could have saved a lot of time by writing proper tests for my application.

## Future Developments

There are many future developments I would like to make to this project. the first step is for me to finish off my MVP tasks. In addition I would like to:
- Create special admin access and admin specific actions
- Include a refund service payment
- Create a proper interactive booking calendar
- Allow for omniauth


## Collaboration

One of the things I enjoy about coding is the chance to work with other people, to share ideas and different solutions to a problem. Although this was an individual project, it wouldn't have been possible for me to get to this stage without help from my fellow students. 


Timetable
