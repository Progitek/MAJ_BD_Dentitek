ALTER TABLE t_usersrights ADD addnodos BIT NULL default 1;
update t_usersrights set addnodos = if IsNull(changenodos, 0) = 1 Then 0 Else 1 End If;
ALTER TABLE t_usersrights ALTER changenodos BIT NULL default 1;
update t_usersrights set changenodos = addnodos;