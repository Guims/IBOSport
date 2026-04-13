.class public Lcom/google/firebase/FirebaseCommonRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Le4/b;

    invoke-static {v1}, Ly3/b;->a(Ljava/lang/Class;)Ly3/a;

    move-result-object v2

    new-instance v3, Ly3/i;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-class v6, Le4/a;

    invoke-direct {v3, v4, v5, v6}, Ly3/i;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v2, v3}, Ly3/a;->a(Ly3/i;)V

    new-instance v3, Landroidx/media3/common/d;

    const/16 v6, 0xc

    invoke-direct {v3, v6}, Landroidx/media3/common/d;-><init>(I)V

    iput-object v3, v2, Ly3/a;->f:Ly3/d;

    invoke-virtual {v2}, Ly3/a;->b()Ly3/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ly3/q;

    const-class v3, Lx3/a;

    const-class v6, Ljava/util/concurrent/Executor;

    invoke-direct {v2, v3, v6}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v3, LW3/f;

    const-class v6, LW3/g;

    filled-new-array {v3, v6}, [Ljava/lang/Class;

    move-result-object v3

    new-instance v6, Ly3/a;

    const-class v7, LW3/d;

    invoke-direct {v6, v7, v3}, Ly3/a;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    const-class v3, Landroid/content/Context;

    invoke-static {v3}, Ly3/i;->a(Ljava/lang/Class;)Ly3/i;

    move-result-object v3

    invoke-virtual {v6, v3}, Ly3/a;->a(Ly3/i;)V

    const-class v3, Lv3/e;

    invoke-static {v3}, Ly3/i;->a(Ljava/lang/Class;)Ly3/i;

    move-result-object v3

    invoke-virtual {v6, v3}, Ly3/a;->a(Ly3/i;)V

    new-instance v3, Ly3/i;

    const-class v7, LW3/e;

    invoke-direct {v3, v4, v5, v7}, Ly3/i;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v6, v3}, Ly3/a;->a(Ly3/i;)V

    new-instance v3, Ly3/i;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v4, v1}, Ly3/i;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v6, v3}, Ly3/a;->a(Ly3/i;)V

    new-instance v1, Ly3/i;

    invoke-direct {v1, v2, v4, v5}, Ly3/i;-><init>(Ly3/q;II)V

    invoke-virtual {v6, v1}, Ly3/a;->a(Ly3/i;)V

    new-instance v1, LA3/d;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, LA3/d;-><init>(ILjava/lang/Object;)V

    iput-object v1, v6, Ly3/a;->f:Ly3/d;

    invoke-virtual {v6}, Ly3/a;->b()Ly3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fire-android"

    invoke-static {v2, v1}, LQ5/d;->e(Ljava/lang/String;Ljava/lang/String;)Ly3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "fire-core"

    const-string v2, "21.0.0"

    invoke-static {v1, v2}, LQ5/d;->e(Ljava/lang/String;Ljava/lang/String;)Ly3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-name"

    invoke-static {v2, v1}, LQ5/d;->e(Ljava/lang/String;Ljava/lang/String;)Ly3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-model"

    invoke-static {v2, v1}, LQ5/d;->e(Ljava/lang/String;Ljava/lang/String;)Ly3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-brand"

    invoke-static {v2, v1}, LQ5/d;->e(Ljava/lang/String;Ljava/lang/String;)Ly3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lq0/h;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lq0/h;-><init>(I)V

    const-string v2, "android-target-sdk"

    invoke-static {v2, v1}, LQ5/d;->g(Ljava/lang/String;Lq0/h;)Ly3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lq0/h;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lq0/h;-><init>(I)V

    const-string v2, "android-min-sdk"

    invoke-static {v2, v1}, LQ5/d;->g(Ljava/lang/String;Lq0/h;)Ly3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lq0/h;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lq0/h;-><init>(I)V

    const-string v2, "android-platform"

    invoke-static {v2, v1}, LQ5/d;->g(Ljava/lang/String;Lq0/h;)Ly3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lq0/h;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lq0/h;-><init>(I)V

    const-string v2, "android-installer"

    invoke-static {v2, v1}, LQ5/d;->g(Ljava/lang/String;Lq0/h;)Ly3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    sget-object v1, LS4/c;->q:LS4/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "2.1.20"
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "kotlin"

    invoke-static {v2, v1}, LQ5/d;->e(Ljava/lang/String;Ljava/lang/String;)Ly3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
