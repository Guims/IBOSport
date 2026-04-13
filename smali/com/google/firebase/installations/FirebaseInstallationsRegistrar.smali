.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LD5/g;)LY3/e;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Ly3/c;)LY3/e;

    move-result-object p0

    return-object p0
.end method

.method private static lambda$getComponents$0(Ly3/c;)LY3/e;
    .locals 7

    new-instance v0, LY3/d;

    const-class v1, Lv3/e;

    invoke-interface {p0, v1}, Ly3/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/e;

    const-class v2, LW3/f;

    invoke-interface {p0, v2}, Ly3/c;->b(Ljava/lang/Class;)LX3/b;

    move-result-object v2

    new-instance v3, Ly3/q;

    const-class v4, Lx3/a;

    const-class v5, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v4, v5}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {p0, v3}, Ly3/c;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    new-instance v4, Ly3/q;

    const-class v5, Lx3/b;

    const-class v6, Ljava/util/concurrent/Executor;

    invoke-direct {v4, v5, v6}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {p0, v4}, Ly3/c;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v4, Lz3/i;

    invoke-direct {v4, p0}, Lz3/i;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, v1, v2, v3, v4}, LY3/d;-><init>(Lv3/e;LX3/b;Ljava/util/concurrent/ExecutorService;Lz3/i;)V

    return-object v0
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

    const-class v0, LY3/e;

    invoke-static {v0}, Ly3/b;->a(Ljava/lang/Class;)Ly3/a;

    move-result-object v0

    const-string v1, "fire-installations"

    iput-object v1, v0, Ly3/a;->a:Ljava/lang/String;

    const-class v2, Lv3/e;

    invoke-static {v2}, Ly3/i;->a(Ljava/lang/Class;)Ly3/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, Ly3/i;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-class v5, LW3/f;

    invoke-direct {v2, v3, v4, v5}, Ly3/i;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, Ly3/q;

    const-class v5, Lx3/a;

    const-class v6, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v5, v6}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v5, Ly3/i;

    invoke-direct {v5, v2, v4, v3}, Ly3/i;-><init>(Ly3/q;II)V

    invoke-virtual {v0, v5}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, Ly3/q;

    const-class v5, Lx3/b;

    const-class v6, Ljava/util/concurrent/Executor;

    invoke-direct {v2, v5, v6}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v5, Ly3/i;

    invoke-direct {v5, v2, v4, v3}, Ly3/i;-><init>(Ly3/q;II)V

    invoke-virtual {v0, v5}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, LA3/b;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, LA3/b;-><init>(I)V

    iput-object v2, v0, Ly3/a;->f:Ly3/d;

    invoke-virtual {v0}, Ly3/a;->b()Ly3/b;

    move-result-object v0

    new-instance v2, LW3/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LW3/e;-><init>(I)V

    const-class v3, LW3/e;

    invoke-static {v3}, Ly3/b;->a(Ljava/lang/Class;)Ly3/a;

    move-result-object v3

    iput v4, v3, Ly3/a;->e:I

    new-instance v4, Lq0/f;

    invoke-direct {v4, v2}, Lq0/f;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ly3/a;->f:Ly3/d;

    invoke-virtual {v3}, Ly3/a;->b()Ly3/b;

    move-result-object v2

    const-string v3, "18.0.0"

    invoke-static {v1, v3}, LQ5/d;->e(Ljava/lang/String;Ljava/lang/String;)Ly3/b;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ly3/b;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
