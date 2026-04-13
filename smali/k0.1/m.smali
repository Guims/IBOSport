.class public final synthetic Lk0/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lk0/q;


# direct methods
.method public synthetic constructor <init>(Lk0/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/m;->b:Lk0/q;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget-object p1, p0, Lk0/m;->b:Lk0/q;

    iget-object v0, p1, Lk0/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/p;

    iget-object v3, p1, Lk0/q;->c:Lk0/o;

    iget-boolean v4, v1, Lk0/p;->d:Z

    if-nez v4, :cond_1

    iget-boolean v4, v1, Lk0/p;->c:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lk0/p;->b:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v4}, Landroidx/media3/common/FlagSet$Builder;->build()Landroidx/media3/common/FlagSet;

    move-result-object v4

    new-instance v5, Landroidx/media3/common/FlagSet$Builder;

    invoke-direct {v5}, Landroidx/media3/common/FlagSet$Builder;-><init>()V

    iput-object v5, v1, Lk0/p;->b:Landroidx/media3/common/FlagSet$Builder;

    const/4 v5, 0x0

    iput-boolean v5, v1, Lk0/p;->c:Z

    iget-object v1, v1, Lk0/p;->a:Ljava/lang/Object;

    invoke-interface {v3, v1, v4}, Lk0/o;->g(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    :cond_1
    iget-object v1, p1, Lk0/q;->b:Lk0/y;

    iget-object v1, v1, Lk0/y;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    return v2
.end method
