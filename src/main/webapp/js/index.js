document.addEventListener("DOMContentLoaded", function () {
    $(".animated").text("Sarah BERGERE");
    $.ajax({
        type: 'GET',
        url: 'ressource/projects.json',
        dataType: 'json',
        success: function (projects) {
            const idSchool = $('#schoolProject');
            let list = document.createElement('ul');
            projects.forEach(project => { //for each project i create an object and different tags to fill the school projects part
                const projectObject = new Project(project.id, project.title, project.image, project.description, project.myPart, project.learned, project.technologies);
                var projectNumber = projectObject.id;
                projectNumber = (projectNumber.toLowerCase()).split(' ').join('');

                //The experience part
                let li = document.createElement('li');
                li.className = 'myExperience';
                li.textContent = projectObject.id + ' : ' + projectObject.title + '. ';
                let learnMore = document.createElement('a');
                learnMore.href = projectNumber + ".jsp";
                learnMore.textContent = 'Learn more.';

                li.append(learnMore);
                list.append(li);
            });
            idSchool.append(list);
        },
        error: function (error) {
            console.error('Error projects', error);
        }
    })
});
