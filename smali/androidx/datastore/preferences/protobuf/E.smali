.class public final Landroidx/datastore/preferences/protobuf/E;
.super Ljava/lang/Object;


# static fields
.field public static final b:Landroidx/datastore/preferences/protobuf/s;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/s;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/s;-><init>(I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/E;->b:Landroidx/datastore/preferences/protobuf/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Landroidx/datastore/preferences/protobuf/D;

    sget-object v1, Landroidx/datastore/preferences/protobuf/S;->c:Landroidx/datastore/preferences/protobuf/S;

    :try_start_0
    const-string v1, "androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/K;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Landroidx/datastore/preferences/protobuf/E;->b:Landroidx/datastore/preferences/protobuf/s;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/datastore/preferences/protobuf/K;

    sget-object v3, Landroidx/datastore/preferences/protobuf/s;->b:Landroidx/datastore/preferences/protobuf/s;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Landroidx/datastore/preferences/protobuf/D;->a:[Landroidx/datastore/preferences/protobuf/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroidx/datastore/preferences/protobuf/x;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/datastore/preferences/protobuf/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/x;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/l;->c:Landroidx/datastore/preferences/protobuf/E;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/V;)V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/l;

    check-cast p2, Landroidx/datastore/preferences/protobuf/a;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/l;->s0(II)V

    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/l;->c:Landroidx/datastore/preferences/protobuf/E;

    invoke-interface {p3, p2, v1}, Landroidx/datastore/preferences/protobuf/V;->b(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/E;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/l;->s0(II)V

    return-void
.end method
