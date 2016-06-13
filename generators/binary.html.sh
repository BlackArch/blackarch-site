cat common/start-binary

cat << EOF

    <!-- Page Content -->
    <div class="container result">
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header page-header-title">
	            <h1>Binary</h1> <h2>The list</h2>
                </div>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active"><a href="tools.html">tools</a></li>
                     <li class="active">Binary</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-lg-12">
                <p>
				Packages that operate on binary  les in some form.</p>
                <br />
                <p>
                    <b>Tool count:</b> <a href="">${BINARY_COUNT}</a>
                </p>
                <div class="panel panel-default text-left">
                    <div class="panel-heading">
                        <b>BlackArch binary</b>
                    </div>
                    <table id="tbl-minimalist" itemscope itemtype="https://www.schema.org/Thing">
                        <thead>
                            <tr>
                                <th class=tbl-name itemprop="item">Name</th>
                                <th class=tbl-version>Version</th>
                                <th class=tbl-description>Description</th>
                                <th class=tbl-homepage>Homepage</th>
                            </tr>
                        </thead>
                        <tbody>
EOF


while IFS='|' read -r pkgname pkgver pkgdesc url ; do
cat << EOF
                            <tr>
                                <td class=tbl-name itemprop="name">${pkgname}</td>
                                <td class=tbl-version>${pkgver}</td>
                                <td class=tbl-description itemprop="description">${pkgdesc}</td>
                                <td class=tbl-homepage itemprop="mainEntityOfPage"><a href="${url}" target="_blank">${url}</a></td>
                            </tr>
EOF
done < data/binary

cat <<\EOF
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- /.row -->
EOF

cat common/end
