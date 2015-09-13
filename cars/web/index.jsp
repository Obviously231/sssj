<%--
  Created by IntelliJ IDEA.
  User: Caterina
  Date: 2015/5/6
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>校园卡消费管理系统————powered by Hadoop</title>

    <link rel="stylesheet" type="text/css" href="./lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="./stylesheets/theme.css">
    <link rel="stylesheet" href="./lib/font-awesome/css/font-awesome.css">

    <script src="./lib/jquery-1.7.2.min.js" type="text/javascript"></script>

    <style type="text/css">
        #line-chart {
            height: 300px;
            width: 800px;
            margin: 0px auto;
            margin-top: 1em;
        }

        .brand {
            font-family: georgia, serif;
        }

        .brand .first {
            color: #ccc;
            font-style: italic;
        }

        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">

</head>

<!--[if lt IE 7 ]>
<body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]>
<body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]>
<body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]>
<body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body class="">
<!--<![endif]-->

<div class="navbar">
    <div class="navbar-inner">
        <ul class="nav pull-right">

        </ul>
        <a class="brand" href="index.jsp"><span class="first">Hadoop</span> <span class="second">校园卡消费管理平台</span></a>
    </div>
</div>

<div class="sidebar-nav">

    <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>仪表盘</a>
    <ul id="dashboard-menu" class="nav nav-list collapse in">
        <li><a href="index.jsp">首页</a></li>
        <li><a href="consums">查询消费记录</a></li>
        <li><a href="user.jsp">null</a></li>
        <li><a href="media.jsp">Media</a></li>
        <li><a href="calendar.jsp">Calendar</a></li>

    </ul>

    <a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>Account<span
            class="label label-info">+3</span></a>
    <ul id="accounts-menu" class="nav nav-list collapse">
        <li><a href="sign-in.jsp">Sign In</a></li>
        <li><a href="sign-up.jsp">Sign Up</a></li>
        <li><a href="reset-password.jsp">Reset Password</a></li>
    </ul>

    <a href="#error-menu" class="nav-header collapsed" data-toggle="collapse"><i class="icon-exclamation-sign"></i>Error
        Pages <i class="icon-chevron-up"></i></a>
    <ul id="error-menu" class="nav nav-list collapse">
        <li><a href="403.jsp">403 page</a></li>
        <li><a href="404.jsp">404 page</a></li>
        <li><a href="500.jsp">500 page</a></li>
        <li><a href="503.jsp">503 page</a></li>
    </ul>

    <a href="#legal-menu" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>Legal</a>
    <ul id="legal-menu" class="nav nav-list collapse">
        <li><a href="privacy-policy.jsp">Privacy Policy</a></li>
        <li><a href="terms-and-conditions.jsp">Terms and Conditions</a></li>
    </ul>

    <a href="help.jsp" class="nav-header"><i class="icon-question-sign"></i>Help</a>
    <a href="faq.jsp" class="nav-header"><i class="icon-comment"></i>Faq</a>
</div>


<div class="content">

    <div class="header">
        <div class="stats">
            <p class="stat"><span class="number">53</span>tickets</p>

            <p class="stat"><span class="number">27</span>tasks</p>

            <p class="stat"><span class="number">15</span>waiting</p>
        </div>

        <h1 class="page-title">Dashboard</h1>
    </div>

    <ul class="breadcrumb">
        <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
        <li class="active">Dashboard</li>
    </ul>

    <div class="container-fluid">
        <div class="row-fluid">


            <div class="row-fluid">

                <div class="alert alert-info">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <strong>Just a quick note:</strong> Hope you like the theme!
                </div>

                <div class="block">
                    <a href="#page-stats" class="block-heading" data-toggle="collapse">Latest Stats</a>

                    <div id="page-stats" class="block-body collapse in">

                        <div class="stat-widget-container">
                            <div class="stat-widget">
                                <div class="stat-button">
                                    <p class="title">2,500</p>

                                    <p class="detail">Accounts</p>
                                </div>
                            </div>

                            <div class="stat-widget">
                                <div class="stat-button">
                                    <p class="title">3,299</p>

                                    <p class="detail">Subscribers</p>
                                </div>
                            </div>

                            <div class="stat-widget">
                                <div class="stat-button">
                                    <p class="title">$1,500</p>

                                    <p class="detail">Pending</p>
                                </div>
                            </div>

                            <div class="stat-widget">
                                <div class="stat-button">
                                    <p class="title">$12,675</p>

                                    <p class="detail">Completed</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="row-fluid">
                <div class="block span6">
                    <a href="#tablewidget" class="block-heading" data-toggle="collapse">Users<span
                            class="label label-warning">+10</span></a>

                    <div id="tablewidget" class="block-body collapse in">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Username</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Mark</td>
                                <td>Tompson</td>
                                <td>the_mark7</td>
                            </tr>
                            <tr>
                                <td>Ashley</td>
                                <td>Jacobs</td>
                                <td>ash11927</td>
                            </tr>
                            <tr>
                                <td>Audrey</td>
                                <td>Ann</td>
                                <td>audann84</td>
                            </tr>
                            <tr>
                                <td>John</td>
                                <td>Robinson</td>
                                <td>jr5527</td>
                            </tr>
                            <tr>
                                <td>Aaron</td>
                                <td>Butler</td>
                                <td>aaron_butler</td>
                            </tr>
                            <tr>
                                <td>Chris</td>
                                <td>Albert</td>
                                <td>cab79</td>
                            </tr>
                            </tbody>
                        </table>
                        <p><a href="users.jsp">More...</a></p>
                    </div>
                </div>
                <div class="block span6">
                    <a href="#widget1container" class="block-heading" data-toggle="collapse">Collapsible </a>

                    <div id="widget1container" class="block-body collapse in">
                        <h2>Using Ruby?</h2>

                        <p>This template was developed with <a href="http://middlemanapp.com/"
                                                               target="_blank">Middleman</a> and includes .erb layouts
                            and views.</p>

                        <p>All of the views you see here (sign in, sign up, users, etc) are already split up so you
                            don't have to waste your time doing it yourself!</p>

                        <p>The layout.erb file includes the header, footer, and side navigation and all of the views are
                            broken out into their own files.</p>

                        <p>If you aren't using Ruby, there is also a set of plain HTML files for each page, just like
                            you would expect.</p>
                    </div>
                </div>
            </div>

            <div class="row-fluid">
                <div class="block span6">
                    <div class="block-heading">
            <span class="block-icon pull-right">
                <a href="#" class="demo-cancel-click" rel="tooltip" title="Click to refresh"><i
                        class="icon-refresh"></i></a>
            </span>

                        <a href="#widget2container" data-toggle="collapse">History</a>
                    </div>
                    <div id="widget2container" class="block-body collapse in">
                        <table class="table list">
                            <tbody>
                            <tr>
                                <td>
                                    <p><i class="icon-user"></i> Mark Otto</p>
                                </td>
                                <td>
                                    <p>Amount: $1,247</p>
                                </td>
                                <td>
                                    <p>Date: 7/19/2012</p>
                                    <a href="#">View Transaction</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p><i class="icon-user"></i> Audrey Ann</p>
                                </td>
                                <td>
                                    <p>Amount: $2,793</p>
                                </td>
                                <td>
                                    <p>Date: 7/12/2012</p>
                                    <a href="#">View Transaction</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p><i class="icon-user"></i> Mark Tompson</p>
                                </td>
                                <td>
                                    <p>Amount: $2,349</p>
                                </td>
                                <td>
                                    <p>Date: 3/10/2012</p>
                                    <a href="#">View Transaction</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p><i class="icon-user"></i> Ashley Jacobs</p>
                                </td>
                                <td>
                                    <p>Amount: $1,192</p>
                                </td>
                                <td>
                                    <p>Date: 1/19/2012</p>
                                    <a href="#">View Transaction</a>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="block span6">
                    <p class="block-heading">Not Collapsible</p>

                    <div class="block-body">
                        <h2>Tip of the Day</h2>

                        <p>Fava bean jícama seakale beetroot courgette shallot amaranth pea garbanzo carrot radicchio
                            peanut leek pea sprouts arugula brussels sprout green bean. Spring onion broccoli chicory
                            shallot winter purslane pumpkin gumbo cabbage squash beet greens lettuce celery. Gram
                            zucchini swiss chard mustard burdock radish brussels sprout groundnut. Asparagus horseradish
                            beet greens broccoli brussels sprout bitterleaf groundnut cress sweet pepper leek bok choy
                            shallot celtuce scallion chickpea radish pea sprouts.</p>

                        <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
                    </div>
                </div>
            </div>


            <footer>
                <hr>

                <p class="pull-right">&copy; 2015 <a href="#" target="_blank">Chw</a></p>

            </footer>

        </div>
    </div>
</div>


<script src="./lib/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
    $("[rel=tooltip]").tooltip();
    $(function () {
        $('.demo-cancel-click').click(function () {
            return false;
        });
    });
</script>

</body>
</html>


