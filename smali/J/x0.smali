.class public final LJ/x0;
.super LJ/w0;


# static fields
.field public static final q:LJ/B0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, LE3/k;->j()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, LJ/B0;->g(Landroid/view/View;Landroid/view/WindowInsets;)LJ/B0;

    move-result-object v0

    sput-object v0, LJ/x0;->q:LJ/B0;

    return-void
.end method

.method public constructor <init>(LJ/B0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LJ/w0;-><init>(LJ/B0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(I)LB/c;
    .locals 1

    iget-object v0, p0, LJ/t0;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, LJ/A0;->a(I)I

    move-result p1

    invoke-static {v0, p1}, LE3/k;->h(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, LB/c;->c(Landroid/graphics/Insets;)LB/c;

    move-result-object p1

    return-object p1
.end method
