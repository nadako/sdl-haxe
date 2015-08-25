import haxe.macro.Context;
import haxe.macro.Expr;

class CModule {
    static function build():Array<Field> {
        var fields = Context.getBuildFields();
        for (field in fields) {
            field.access.push(AStatic);
            field.meta.push({pos: field.pos, name: ":native", params: [macro $v{field.name}]});
            switch (field.kind) {
                case FVar(t, null):
                    field.kind = FProp("default", "never", t);
                default:
            }
        }
        return fields;
    }
}
