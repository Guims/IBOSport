.class public final Lk/g;
.super Lj/w;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lk/k;


# direct methods
.method public constructor <init>(Lk/k;Landroid/content/Context;Lj/E;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lk/g;->l:I

    iput-object p1, p0, Lk/g;->m:Lk/k;

    const v6, 0x7f040022

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v7}, Lj/w;-><init>(Landroid/content/Context;Lj/m;Landroid/view/View;ZII)V

    iget-object p2, v3, Lj/E;->A:Lj/o;

    iget p2, p2, Lj/o;->x:I

    const/16 p3, 0x20

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lk/k;->x:Lk/j;

    if-nez p2, :cond_1

    iget-object p2, p1, Lk/k;->w:Lj/A;

    check-cast p2, Landroid/view/View;

    :cond_1
    iput-object p2, v1, Lj/w;->e:Landroid/view/View;

    :goto_0
    iget-object p1, p1, Lk/k;->L:Lcom/bumptech/glide/f;

    iput-object p1, v1, Lj/w;->h:Lj/x;

    iget-object p2, v1, Lj/w;->i:Lj/u;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lj/y;->e(Lj/x;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lk/k;Landroid/content/Context;Lj/m;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Lk/g;->l:I

    iput-object p1, p0, Lk/g;->m:Lk/k;

    const v6, 0x7f040022

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v7}, Lj/w;-><init>(Landroid/content/Context;Lj/m;Landroid/view/View;ZII)V

    const p2, 0x800005

    iput p2, v1, Lj/w;->f:I

    iget-object p1, p1, Lk/k;->L:Lcom/bumptech/glide/f;

    iput-object p1, v1, Lj/w;->h:Lj/x;

    iget-object p2, v1, Lj/w;->i:Lj/u;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lj/y;->e(Lj/x;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Lk/g;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk/g;->m:Lk/k;

    iget-object v1, v0, Lk/k;->r:Lj/m;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lj/m;->c(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lk/k;->H:Lk/g;

    invoke-super {p0}, Lj/w;->c()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lk/g;->m:Lk/k;

    iput-object v0, v1, Lk/k;->I:Lk/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Lj/w;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
