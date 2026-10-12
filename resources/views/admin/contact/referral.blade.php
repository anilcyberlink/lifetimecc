@extends('admin.master')
@section('title', 'Referral')
@section('breadcrumb')
@endsection
@section('content')
    <div class="tray tray-center" style="height: 647px;">
        <div class="panel">
            <div class="panel-body ph20">
                <div class="table-responsive mhn20 mvn15">
                    <table class="table admin-form table-striped dataTable" id="datatable3">
                        <thead>
                            <tr class="bg-light">
                                <th>SN</th>
                                <th>Details</th>
                                <th>Date</th>
                                <th>Services</th>
                                <th>Safety Risks</th>
                                <th>Consent</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data as $key => $row)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td>
                                        <strong>{{ $row->full_name }}</strong><br>
                                        {{ $row->email }}<br>
                                        {{ $row->phone }}<br>
                                        {{ $row->residential_address }}
                                    </td>
                                    <td>{{ $row->created_at ? $row->created_at->format('d M Y') : '-' }}</td>
                                    <td>
                                        @foreach ($row->requested_services ?? [] as $service)
                                            {{ $service }}<br>
                                        @endforeach
                                    </td>
                                    <td>
                                        {{ $row->has_safety_risks }}
                                        @if ($row->has_safety_risks === 'Yes' && $row->safety_details)
                                            <br>{{ $row->safety_details }}
                                        @endif
                                    </td>
                                    <td>{{ $row->consent ? 'Accepted' : 'Not accepted' }}</td>
                                    <td>
                                        <a href="{{ route('referral.show', $row->id) }}" class="btn btn-primary btn-sm">
                                            View Details
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('libraries')
    <script src="{{ asset('vendor/plugins/datatables/media/js/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('vendor/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js') }}"></script>
    <script src="{{ asset('vendor/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js') }}"></script>
    <script src="{{ asset('vendor/plugins/datatables/media/js/dataTables.bootstrap.js') }}"></script>
    <script>
        jQuery(document).ready(function() {
            $('#datatable3').dataTable({
                "aoColumnDefs": [{
                    "bSortable": true,
                    "aTargets": [-1]
                }],
                "oLanguage": {
                    "oPaginate": {
                        "sPrevious": "Previous",
                        "sNext": "Next"
                    }
                },
                "iDisplayLength": 50,
                "aLengthMenu": [
                    [5, 10, 25, 50, -1],
                    [5, 10, 25, 50, "All"]
                ],
                "sDom": '<"dt-panelmenu clearfix"Tfr>t<"dt-panelfooter clearfix"ip>',
                "oTableTools": {
                    "sSwfPath": "{{ asset('vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf') }}"
                }
            });
        });
    </script>
@endsection
