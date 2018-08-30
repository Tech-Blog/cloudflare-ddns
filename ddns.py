from pycfdns import CloudflareUpdater
cfupdate = CloudflareUpdater()
zone = '[zone]'
email = '[email]'
key = '[token]'
records = [records]

headers = cfupdate.set_header(email, key)
zoneid = cfupdate.get_zoneID(headers, zone)
update_records = cfupdate.get_recordInfo(headers, zoneid, zone, records)
result = cfupdate.update_records(headers, zoneid, update_records)
print(result)
