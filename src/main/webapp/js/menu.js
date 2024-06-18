// I put the class in this file because every html page has this file linked
class Project {
    constructor(id, title, image, description, myPart, learned, technologies) {
        this.id = id;
        this.title = title;
        this.image = image;
        this.description = description;
        this.myPart = myPart;
        this.learned = learned;
        this.technologies = technologies;
    }
}

document.addEventListener("DOMContentLoaded", function () {
    $.ajax({
        type: 'GET',
        url: 'ressource/projects.json',
        dataType: 'json',
        success: function (projects) {
            const idMenu = $('#menu');
            projects.forEach(project => { //for each project in the JSON I create an object and fill the menu with the id of the project
                const projectObject = new Project(project.id, project.title, project.image, project.description, project.myPart, project.learned, project.technologies);
                //The menu
                var projectNumber = projectObject.id;
                projectNumber = (projectNumber.toLowerCase()).split(' ').join('');
                let h2 = document.createElement("h2");
                let newProject = document.createElement('a');
                newProject.setAttribute("href", projectNumber + ".html");
                newProject.textContent = projectObject.id;
                h2.append(newProject);
                idMenu.append(h2);
            });
        },
        error: function (error) {
            console.error('Error projects', error);
        }
    })
});
