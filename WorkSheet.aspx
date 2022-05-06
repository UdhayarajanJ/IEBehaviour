<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkSheet.aspx.cs" Inherits="POC_IE_Behaviour.WorkSheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IE Behaviour Support Chrome</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="Content/font-awesome.min.css" type="text/css" />
    <script src="Scripts/jquery-3.6.0.min.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="Scripts/IEBehaviourLiabrary/IEBehavior.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            ApplyIEBehaviour(['#textExecept1','#textExecept2']);
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row text-center p-2 bg-primary text-white rounded-3">
                <h4>IE Behaviour Support Chrome</h4>
            </div>
            <div class="row my-3">
                <table class="table table-responsive table-bordered w-100">
                    <thead>
                        <tr>
                            <th>Type[Text]</th>
                            <th>Type[Password]</th>
                            <th>Type[Radio]</th>
                            <th>Type[Checkbox]</th>
                        </tr>
                    </thead>
                    <tbody class="text-center">
                        <tr>
                            <td>
                                <input type="text" class="form-control form-control-sm" /></td>
                            <td>
                                <input type="password" id="textExecept2" class="form-control form-control-sm" /></td>
                            <td>
                                <input type="radio" class="form-check-input" /></td>
                            <td>
                                <input type="checkbox" class="form-check-input" /></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" value="testValue" id="textExecept1" class="form-control form-control-sm" /></td>
                            <td>
                                <input type="password" value="testPassword" class="form-control form-control-sm" /></td>
                            <td>
                                <input type="radio" class="form-check-input" /></td>
                            <td>
                                <input type="checkbox" class="form-check-input" /></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" value="testValue" class="form-control form-control-sm" readonly="readonly" /></td>
                            <td>
                                <input type="password" value="testPassword"  class="form-control form-control-sm" readonly="readonly" /></td>
                            <td>
                                <input type="radio" class="form-check-input" readonly="readonly" /></td>
                            <td>
                                <input type="checkbox" class="form-check-input" readonly="readonly" /></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" value="testValue" class="form-control form-control-sm" disabled="disabled" /></td>
                            <td>
                                <input type="password" value="testPassword" class="form-control form-control-sm" disabled="disabled" /></td>
                            <td>
                                <input type="radio" class="form-check-input" disabled="disabled" /></td>
                            <td>
                                <input type="checkbox" class="form-check-input" disabled="disabled" /></td>
                        </tr>
                    </tbody>
                </table>
                <%-- Using ICons --%>
                <div class="row my-3 ">
                    <span class="d-flex justify-content-start align-items-start">
                        <i class="fa fa-times-circle-o mx-3"></i>
                        <i class="fa fa-eye mx-3"></i>
                        <i class="fa fa-eye-slash mx-3"></i>
                    </span>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
