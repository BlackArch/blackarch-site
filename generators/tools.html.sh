cat common/start-tools

cat << EOF

    <!-- Page Content -->
    <div class="container result">
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header page-header-title">
	            <h1>Tools</h1> <h2>The list</h2>
                </div>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Tools</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-lg-12">
                <p>
                    Every package of the BlackArch Linux repository is listed in the following table. If you don't find your needed tool in this list simply open an
                    <a href="https://github.com/BlackArch/blackarch/issues/new" target="_blank">issue</a> or better do a
                    <a href="https://github.com/BlackArch/blackarch/pulls" target="_blank">pull request</a> for the tool you want to be in our repository.
                    We are fast by packaging and releasing tools.
                </p>
                <br />
                <p>
                    <b>Tool count:</b> <a href="">${TOOL_COUNT}</a>
                </p>
                <div class="panel panel-default text-left">
                    <div class="panel-heading">
                        <b>BlackArch Linux Complete Tools List</b>
                    </div>
                    <table id="tbl-minimalist" summary="Package List">
                        <thead>
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Version</th>
                                <th scope="col">Description</th>
                                <th scope="col">Homepage</th>
                            </tr>
                        </thead>
                        <tbody>
EOF


while IFS='|' read -r pkgname pkgver pkgdesc url ; do
cat << EOF
                            <tr>
                                <td>${pkgname}</td>
                                <td>${pkgver}</td>
                                <td>${pkgdesc}</td>
                                <td><a href="${url}" target="_blank">${url}</a></td>
                            </tr>
EOF
done < data/tools

cat <<\EOF
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
     </div>
        <!-- /.row -->
EOF

cat common/end
