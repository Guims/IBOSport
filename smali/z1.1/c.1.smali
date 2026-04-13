.class public final Lz1/c;
.super Lz1/m;


# instance fields
.field public a:Z

.field public final b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz1/c;->a:Z

    iput-object p1, p0, Lz1/c;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lz1/c;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/media/session/b;->t(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final c(Lz1/l;)V
    .locals 2

    iget-boolean v0, p0, Lz1/c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz1/c;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/media/session/b;->t(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Lz1/l;->w(Lz1/j;)Lz1/l;

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lz1/c;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/b;->t(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final f(Lz1/l;)V
    .locals 1

    iget-object p1, p0, Lz1/c;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->t(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz1/c;->a:Z

    return-void
.end method
