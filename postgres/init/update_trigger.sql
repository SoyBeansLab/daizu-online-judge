\c doj;

-- update_atを更新するためのfunction
-- http://to-c.hatenablog.com/entry/2017/04/17/225826
CREATE FUNCTION set_update_timestamp() RETURNS OPAQUE AS '
  BEGIN
    new.updated_at := ''now'';
    RETURN new;
  END;
' LANGUAGE 'plpgsql';

CREATE TRIGGER update_trigger BEFORE UPDATE ON contests FOR EACH ROW EXECUTE PROCEDURE set_update_timestamp();

CREATE TRIGGER update_trigger BEFORE UPDATE ON languages FOR EACH ROW EXECUTE PROCEDURE set_update_timestamp();

CREATE TRIGGER update_trigger BEFORE UPDATE ON problems FOR EACH ROW EXECUTE PROCEDURE set_update_timestamp();
