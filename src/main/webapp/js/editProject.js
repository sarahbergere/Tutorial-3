document.addEventListener("DOMContentLoaded", function () {
    $.ajax({
        type: 'GET',
        url: 'ressource/projects.json',
        dataType: 'json',
        success: function (projects) {
            let urlParams = new URL(window.location.href); //getting the parameter of the url to know which project it is
            let number = urlParams.searchParams.get("project");
            number--;

            //creating the project object
            let project = new Project(
                projects[number].id, projects[number].title,
                projects[number].image, projects[number].description,
                projects[number].myPart, projects[number].learned,
                projects[number].technologies);

            $('#title').text("Edit " + project.id);
            $('#idProject').val(project.id);
            $('#headerProject').text('Edit ' + project.id);
            $('.title').html('<h1>' + project.title + '</h1>');

            initialize(project); //initializing the inputs with the data from the JSON
            updateDivs(project); //doing the same for the divs

            $('#projectImage').attr('src', project.image);   //initializing the image

            //for the different input change
            $('#titleInput').on('input', function () {
                $('.title').html('<h1>' + $(this).val() + '</h1>');
            });

            $('#description, #myPart, #learned').on('input', function () {
                updateDescriptionDiv();
            });

            $('#technologies').on('input' , function () {
                const techArray = $(this).val().split(',').map(tech => tech.trim());
                const techList = techArray.map(tech => `<li>${tech}</li>`).join('');
                $('#technologiesList').html(techList);
            });

            $('#image' ).on('change', function (event) {
                let file = event.target.files[0];
                if (file) {
                    $('#projectImage').attr('src', URL.createObjectURL(file));
                }
            });

            $("#reset").on( 'click',function () {
                initialize(project);
                updateDivs(project);
                $('#image').val(null);
                $('#projectImage').attr('src', project.image);
            })
        },
        error: function (error) {
            console.error('Error projects', error);
        }
    });

    function initialize(project) {
        $("#titleInput").val(project.title);
        $('#description').val(project.description);
        $("#learned").val(project.learned);
        $("#myPart").val(project.myPart);
        $("#technologies").val(project.technologies);
    }

    function updateDivs(project) {
        updateDescriptionDiv();
        $('.title').html('<h1>' +project.title + '</h1>');

        const techArray = project.technologies;
        const techList = techArray.map(tech => `<li>${tech}</li>`).join('');
        $('#technologiesList').html(techList);
    }

    function updateDescriptionDiv() {
        $('.description').html('<h3>Description</h3>' +
            '<p>' + $('#description').val() + '</p>' +
            '<p>' + $('#myPart').val() + '</p>' +
            '<p>' + $('#learned').val() + '</p>');
    }

});
