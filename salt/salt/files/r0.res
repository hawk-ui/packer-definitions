resource r0 {
	device /dev/drbd0;
	disk {{ disk }};
	meta-disk internal;
	on webui {
		address 10.13.37.10:7788;
		node-id 0;
	}
	on node1 {
		address 10.13.37.11:7788;
		node-id 1;
	}
	on node2 {
		address 10.13.37.12:7788;
		node-id 2;
	}
	disk {
		resync-rate 1M;
	}
	connection-mesh {
		hosts webui node1 node2;
	}
}
