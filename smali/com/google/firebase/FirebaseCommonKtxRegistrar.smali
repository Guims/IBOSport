.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly3/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ly3/q;

    const-class v1, Lx3/a;

    const-class v2, Lm5/s;

    invoke-direct {v0, v1, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Ly3/b;->b(Ly3/q;)Ly3/a;

    move-result-object v0

    new-instance v3, Ly3/q;

    const-class v4, Ljava/util/concurrent/Executor;

    invoke-direct {v3, v1, v4}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v1, Ly3/i;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v1, v3, v5, v6}, Ly3/i;-><init>(Ly3/q;II)V

    invoke-virtual {v0, v1}, Ly3/a;->a(Ly3/i;)V

    sget-object v1, Lv3/f;->q:Lv3/f;

    iput-object v1, v0, Ly3/a;->f:Ly3/d;

    invoke-virtual {v0}, Ly3/a;->b()Ly3/b;

    move-result-object v0

    new-instance v1, Ly3/q;

    const-class v3, Lx3/c;

    invoke-direct {v1, v3, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v1}, Ly3/b;->b(Ly3/q;)Ly3/a;

    move-result-object v1

    new-instance v7, Ly3/q;

    invoke-direct {v7, v3, v4}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v3, Ly3/i;

    invoke-direct {v3, v7, v5, v6}, Ly3/i;-><init>(Ly3/q;II)V

    invoke-virtual {v1, v3}, Ly3/a;->a(Ly3/i;)V

    sget-object v3, Lv3/f;->r:Lv3/f;

    iput-object v3, v1, Ly3/a;->f:Ly3/d;

    invoke-virtual {v1}, Ly3/a;->b()Ly3/b;

    move-result-object v1

    new-instance v3, Ly3/q;

    const-class v7, Lx3/b;

    invoke-direct {v3, v7, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v3}, Ly3/b;->b(Ly3/q;)Ly3/a;

    move-result-object v3

    new-instance v8, Ly3/q;

    invoke-direct {v8, v7, v4}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v7, Ly3/i;

    invoke-direct {v7, v8, v5, v6}, Ly3/i;-><init>(Ly3/q;II)V

    invoke-virtual {v3, v7}, Ly3/a;->a(Ly3/i;)V

    sget-object v7, Lv3/f;->s:Lv3/f;

    iput-object v7, v3, Ly3/a;->f:Ly3/d;

    invoke-virtual {v3}, Ly3/a;->b()Ly3/b;

    move-result-object v3

    new-instance v7, Ly3/q;

    const-class v8, Lx3/d;

    invoke-direct {v7, v8, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v7}, Ly3/b;->b(Ly3/q;)Ly3/a;

    move-result-object v2

    new-instance v7, Ly3/q;

    invoke-direct {v7, v8, v4}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v4, Ly3/i;

    invoke-direct {v4, v7, v5, v6}, Ly3/i;-><init>(Ly3/q;II)V

    invoke-virtual {v2, v4}, Ly3/a;->a(Ly3/i;)V

    sget-object v4, Lv3/f;->t:Lv3/f;

    iput-object v4, v2, Ly3/a;->f:Ly3/d;

    invoke-virtual {v2}, Ly3/a;->b()Ly3/b;

    move-result-object v2

    filled-new-array {v0, v1, v3, v2}, [Ly3/b;

    move-result-object v0

    invoke-static {v0}, LT4/h;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
