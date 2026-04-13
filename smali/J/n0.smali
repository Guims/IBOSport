.class public final LJ/n0;
.super Ljava/lang/Object;


# instance fields
.field public a:LJ/m0;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, LJ/l0;

    invoke-static {p1, p2, p3, p4}, LE3/k;->l(ILandroid/view/animation/Interpolator;J)Landroid/view/WindowInsetsAnimation;

    move-result-object p1

    invoke-direct {v0, p1}, LJ/l0;-><init>(Landroid/view/WindowInsetsAnimation;)V

    iput-object v0, p0, LJ/n0;->a:LJ/m0;

    return-void

    :cond_0
    new-instance v0, LJ/j0;

    invoke-direct {v0, p1, p2, p3, p4}, LJ/m0;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, LJ/n0;->a:LJ/m0;

    return-void
.end method
