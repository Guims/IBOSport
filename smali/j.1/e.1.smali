.class public final Lj/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lj/f;

.field public final synthetic q:Lj/o;

.field public final synthetic r:Lj/m;

.field public final synthetic s:Lcom/bumptech/glide/f;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/f;Lj/f;Lj/o;Lj/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/e;->s:Lcom/bumptech/glide/f;

    iput-object p2, p0, Lj/e;->b:Lj/f;

    iput-object p3, p0, Lj/e;->q:Lj/o;

    iput-object p4, p0, Lj/e;->r:Lj/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lj/e;->s:Lcom/bumptech/glide/f;

    iget-object v0, v0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Lj/g;

    iget-object v1, p0, Lj/e;->b:Lj/f;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lj/g;->O:Z

    iget-object v1, v1, Lj/f;->b:Lj/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lj/m;->c(Z)V

    iput-boolean v2, v0, Lj/g;->O:Z

    :cond_0
    iget-object v0, p0, Lj/e;->q:Lj/o;

    invoke-virtual {v0}, Lj/o;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lj/o;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Lj/e;->r:Lj/m;

    invoke-virtual {v3, v0, v2, v1}, Lj/m;->q(Landroid/view/MenuItem;Lj/y;I)Z

    :cond_1
    return-void
.end method
