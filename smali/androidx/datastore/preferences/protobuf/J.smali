.class public abstract Landroidx/datastore/preferences/protobuf/J;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/datastore/preferences/protobuf/I;

.field public static final b:Landroidx/datastore/preferences/protobuf/I;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/datastore/preferences/protobuf/S;->c:Landroidx/datastore/preferences/protobuf/S;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "androidx.datastore.preferences.protobuf.MapFieldSchemaFull"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/I;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    sput-object v0, Landroidx/datastore/preferences/protobuf/J;->a:Landroidx/datastore/preferences/protobuf/I;

    new-instance v0, Landroidx/datastore/preferences/protobuf/I;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/J;->b:Landroidx/datastore/preferences/protobuf/I;

    return-void
.end method
