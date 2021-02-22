cat common/start-disassembler

cat << EOF

    <!-- Page Content -->
    <div class="container result">
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header page-header-title">
	            <h1>Disassembler</h1> <h2>The list</h2>
                </div>
                <ol class="breadcrumb">
                    <li><a class=home href="index.html">Home</a>
                    </li>
                    <li class="active"><a class=tools href="tools.html">tools</a></li>
                     <li class="active">disassembler</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-lg-12">
                <p>
This is similar to blackarch-decompiler, and there will probably be a lot of programs that fall into
both, however these packages produce assembly output rather than the raw source code.</p>
                <br />
                <p>
                    <b>Tool count:</b> <a href="">${DISASSEMBLER_COUNT}</a>
                    <input type="text" id="searchTools" onkeyup="searchTools()" placeholder="Input tool name" title="Type in a name">
                </p>
                <div class="panel panel-default text-left">
                    <div class="panel-heading">
                        <b>BlackArch disassembler</b>
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
                                <td class="tbl-version vcat">${pkgver}</td>
                                <td class="tbl-description dcat" itemprop="description">${pkgdesc}</td>
                                <td class=tbl-homepage itemprop="mainEntityOfPage"><a href="${url}" target="_blank">${url}</a></td>
                            </tr>
EOF
done < data/disassembler

cat <<\EOF
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- /.row -->
EOF

cat common/end
