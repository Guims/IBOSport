.class public final LJ/r0;
.super LJ/q0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LJ/q0;-><init>()V

    return-void
.end method

.method public constructor <init>(LJ/B0;)V
    .locals 0

    invoke-direct {p0, p1}, LJ/q0;-><init>(LJ/B0;)V

    return-void
.end method


# virtual methods
.method public c(ILB/c;)V
    .locals 1

    iget-object v0, p0, LJ/q0;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {p1}, LJ/A0;->a(I)I

    move-result p1

    invoke-virtual {p2}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {v0, p1, p2}, LE3/k;->t(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)V

    return-void
.end method
