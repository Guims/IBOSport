.class public abstract LW/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/datastore/preferences/protobuf/G;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/datastore/preferences/protobuf/q0;->r:Landroidx/datastore/preferences/protobuf/m0;

    sget-object v1, Landroidx/datastore/preferences/protobuf/q0;->t:Landroidx/datastore/preferences/protobuf/o0;

    invoke-static {}, LW/g;->v()LW/g;

    move-result-object v2

    new-instance v3, Landroidx/datastore/preferences/protobuf/G;

    invoke-direct {v3, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/G;-><init>(Landroidx/datastore/preferences/protobuf/q0;Landroidx/datastore/preferences/protobuf/q0;LW/g;)V

    sput-object v3, LW/b;->a:Landroidx/datastore/preferences/protobuf/G;

    return-void
.end method
