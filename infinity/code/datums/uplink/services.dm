/datum/uplink_item/item/services/assault_declaration
	name = "Telecrystal Request"
	desc = "An telecrystal request, which will give you boost of 760 telecrystals, but their teleportation will be detected by sensor arrays of NSV Sierra."
	item_cost = 1
	antag_roles = list(MODE_MERCENARY)

/datum/uplink_item/item/services/assault_declaration/get_goods(var/obj/item/device/uplink/U, var/loc)
	command_announcement.Announce("� ������� ���� �������� ������������ �������� ������ ��������������, �������������� ����������� ����������. ������������� ������� ��������� � �� ��� �������������� ��������.", "��������� �������� [station_name()]" , msg_sanitized = 1, zlevels = GetConnectedZlevels(get_z(src)))
	return new /obj/item/stack/telecrystal(loc, 761)