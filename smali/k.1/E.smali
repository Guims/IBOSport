.class public final Lk/E;
.super Lk/r0;


# instance fields
.field public final synthetic y:Lk/K;

.field public final synthetic z:Lk/N;


# direct methods
.method public constructor <init>(Lk/N;Lk/N;Lk/K;)V
    .locals 0

    iput-object p1, p0, Lk/E;->z:Lk/N;

    iput-object p3, p0, Lk/E;->y:Lk/K;

    invoke-direct {p0, p2}, Lk/r0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lj/C;
    .locals 1

    iget-object v0, p0, Lk/E;->y:Lk/K;

    return-object v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lk/E;->z:Lk/N;

    invoke-virtual {v0}, Lk/N;->getInternalPopup()Lk/M;

    move-result-object v1

    invoke-interface {v1}, Lk/M;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lk/N;->u:Lk/M;

    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lk/M;->l(II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
