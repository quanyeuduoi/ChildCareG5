<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="CodeHim">
        <title> BS5 FullCalendar Example </title>
        <!-- Style CSS -->
        <link rel="stylesheet" href="./css/style.css">
        <!-- Demo CSS (No need to include it into your project) -->
        <link rel="stylesheet" href="./css/demo.css">
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css'>
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.2.0/main.min.css'>
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid@4.3.0/main.min.css'>
    </head>
    <body>
        <header class="cd__intro">
            <h1> BS5 FullCalendar Example </h1>
            <p> BS5 FullCalendar </p>
        </header>
        <!--$%adsense%$-->
        <main class="cd__main">
            <!-- Start DEMO HTML (Use the following code into your project)-->
            <div id='calendar'></div>

            <!-- Add modal -->

            <div class="modal fade edit-form" id="form" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header border-bottom-0">
                            <h5 class="modal-title" id="modal-title">Add Event</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form id="myForm">
                            <div class="modal-body">
                                <div class="alert alert-danger " role="alert" id="danger-alert" style="display: none;">
                                    End date should be greater than start date.
                                </div>
                                <div class="form-group">
                                    <label for="event-title">Event name <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="event-title" placeholder="Enter event name" required>
                                </div>
                                <div class="form-group">
                                    <label for="start-date">Start date <span class="text-danger">*</span></label>
                                    <input type="date" class="form-control" id="start-date" placeholder="start-date" required>
                                </div>
                                <div class="form-group">
                                    <label for="end-date">End date - <small class="text-muted">Optional</small></label>
                                    <input type="date" class="form-control" id="end-date" placeholder="end-date">
                                </div>
                                <div class="form-group">
                                    <label for="event-color">Color</label>
                                    <input type="color" class="form-control" id="event-color" value="#3788d8">
                                </div>
                            </div>
                            <div class="modal-footer border-top-0 d-flex justify-content-center">
                                <button type="submit" class="btn btn-success" id="submit-button">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Delete Modal -->
            <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="delete-modal-title" aria-hidden="true">
                <div class="modal-dialog modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="delete-modal-title">Confirm Deletion</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body text-center" id="delete-modal-body">
                            Are you sure you want to delete the event?
                        </div>
                        <div class="modal-footer border-0">
                            <button type="button" class="btn btn-secondary rounded-sm" data-dismiss="modal" id="cancel-button">Cancel</button>
                            <button type="button" class="btn btn-danger rounded-lg" id="delete-button">Delete</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END EDMO HTML (Happy Coding!)-->
        </main>
        <footer class="cd__credit">Author: Mick Nixon M. Manuit - Distributed By: <a title="Free web design code & scripts" href="https://www.codehim.com?source=demo-page" target="_blank">CodeHim</a></footer>
        <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js'></script>
        <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.2.0/main.min.js'></script>
        <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid@4.2.0/main.js'></script>
        <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/interaction@4.2.0/main.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js'></script>
        <script src='https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js'></script>
        <!-- Script JS -->
        <script src="./js/script.js"></script>
        <!--$%analytics%$-->
    </body>
</html>