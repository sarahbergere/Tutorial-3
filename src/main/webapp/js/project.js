document.addEventListener("DOMContentLoaded", function () {
    $.ajax({
        type: 'GET',
        url: 'ressource/projects.json',
        dataType: 'json',
        success: function (data) {
            const projects = data.map(projectData => new Project(  //Making an array of project object from the JSON data
                projectData.id,
                projectData.title,
                projectData.image,
                projectData.description,
                projectData.myPart,
                projectData.learned,
                projectData.technologies
            ));

            let urlParams = new URL(window.location.href);  //getting the URL to know which project it is
            let path = urlParams.pathname;
            let segments = path.split('/');
            let page = segments[segments.length - 1];
            page = page.split(".");
            let projectName = page[0];
            let properName = projectName.charAt(0).toUpperCase() + projectName.slice(1);  //making the string the same format as the id of the project in the JSON
            properName = properName.replace(/(\D)(\d)/, '$1 $2');

            let matchedProject = projects.find(project => project.id === properName); //checking which project is the same as the one from the URL

            if (matchedProject) {
                $('#headerProject').text(matchedProject.id);
            } else {
                console.error('Project not found :', properName);
            }

            //Filling the different divs with the right information
            let title = document.createElement('h1');
            title.textContent = matchedProject.title + ' :';
            $('.central').prepend(title);

            let img = document.createElement('img');
            img.src = matchedProject.image;
            $('.image').append(img);

            let description = document.createElement('p');
            description.textContent = matchedProject.description;

            let myPart = document.createElement('p');
            myPart.textContent = matchedProject.myPart;

            let learned = document.createElement('p');
            learned.textContent = matchedProject.learned;

            $('.resume').append(description, myPart, learned);

            let ul = document.createElement('ul');
            matchedProject.technologies.forEach(element => {
                let li = document.createElement('li');
                li.textContent = element;
                ul.append(li);
            });
            $('.technologies').append(ul);
        },
        error: function (error) {
            console.error('Error projects', error);
        }
    })
});