.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-transport"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LD5/g;)Lg2/e;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$2(Ly3/c;)Lg2/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(LD5/g;)Lg2/e;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$1(Ly3/c;)Lg2/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(LD5/g;)Lg2/e;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Ly3/c;)Lg2/e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Ly3/c;)Lg2/e;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Ly3/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lj2/q;->b(Landroid/content/Context;)V

    invoke-static {}, Lj2/q;->a()Lj2/q;

    move-result-object p0

    sget-object v0, Lh2/a;->f:Lh2/a;

    invoke-virtual {p0, v0}, Lj2/q;->c(Lj2/l;)Lj2/p;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$1(Ly3/c;)Lg2/e;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Ly3/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lj2/q;->b(Landroid/content/Context;)V

    invoke-static {}, Lj2/q;->a()Lj2/q;

    move-result-object p0

    sget-object v0, Lh2/a;->f:Lh2/a;

    invoke-virtual {p0, v0}, Lj2/q;->c(Lj2/l;)Lj2/p;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$2(Ly3/c;)Lg2/e;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Ly3/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lj2/q;->b(Landroid/content/Context;)V

    invoke-static {}, Lj2/q;->a()Lj2/q;

    move-result-object p0

    sget-object v0, Lh2/a;->e:Lh2/a;

    invoke-virtual {p0, v0}, Lj2/q;->c(Lj2/l;)Lj2/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly3/b;",
            ">;"
        }
    .end annotation

    const-class v0, Lg2/e;

    invoke-static {v0}, Ly3/b;->a(Ljava/lang/Class;)Ly3/a;

    move-result-object v1

    const-string v2, "fire-transport"

    iput-object v2, v1, Ly3/a;->a:Ljava/lang/String;

    const-class v3, Landroid/content/Context;

    invoke-static {v3}, Ly3/i;->a(Ljava/lang/Class;)Ly3/i;

    move-result-object v4

    invoke-virtual {v1, v4}, Ly3/a;->a(Ly3/i;)V

    new-instance v4, LA3/b;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, LA3/b;-><init>(I)V

    iput-object v4, v1, Ly3/a;->f:Ly3/d;

    invoke-virtual {v1}, Ly3/a;->b()Ly3/b;

    move-result-object v1

    new-instance v4, Ly3/q;

    const-class v5, LP3/a;

    invoke-direct {v4, v5, v0}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v4}, Ly3/b;->b(Ly3/q;)Ly3/a;

    move-result-object v4

    invoke-static {v3}, Ly3/i;->a(Ljava/lang/Class;)Ly3/i;

    move-result-object v5

    invoke-virtual {v4, v5}, Ly3/a;->a(Ly3/i;)V

    new-instance v5, LA3/b;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, LA3/b;-><init>(I)V

    iput-object v5, v4, Ly3/a;->f:Ly3/d;

    invoke-virtual {v4}, Ly3/a;->b()Ly3/b;

    move-result-object v4

    new-instance v5, Ly3/q;

    const-class v6, LP3/b;

    invoke-direct {v5, v6, v0}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v5}, Ly3/b;->b(Ly3/q;)Ly3/a;

    move-result-object v0

    invoke-static {v3}, Ly3/i;->a(Ljava/lang/Class;)Ly3/i;

    move-result-object v3

    invoke-virtual {v0, v3}, Ly3/a;->a(Ly3/i;)V

    new-instance v3, LA3/b;

    const/16 v5, 0x19

    invoke-direct {v3, v5}, LA3/b;-><init>(I)V

    iput-object v3, v0, Ly3/a;->f:Ly3/d;

    invoke-virtual {v0}, Ly3/a;->b()Ly3/b;

    move-result-object v0

    const-string v3, "19.0.0"

    invoke-static {v2, v3}, LQ5/d;->e(Ljava/lang/String;Ljava/lang/String;)Ly3/b;

    move-result-object v2

    filled-new-array {v1, v4, v0, v2}, [Ly3/b;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
