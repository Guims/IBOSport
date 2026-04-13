.class Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic b:Landroidx/activity/j;


# direct methods
.method public constructor <init>(Landroidx/activity/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->b:Landroidx/activity/j;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/r;Landroidx/lifecycle/l;)V
    .locals 0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->b:Landroidx/activity/j;

    iget-object p2, p1, Landroidx/activity/j;->u:Landroidx/lifecycle/L;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/activity/h;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/activity/h;->a:Landroidx/lifecycle/L;

    iput-object p2, p1, Landroidx/activity/j;->u:Landroidx/lifecycle/L;

    :cond_0
    iget-object p2, p1, Landroidx/activity/j;->u:Landroidx/lifecycle/L;

    if-nez p2, :cond_1

    new-instance p2, Landroidx/lifecycle/L;

    invoke-direct {p2}, Landroidx/lifecycle/L;-><init>()V

    iput-object p2, p1, Landroidx/activity/j;->u:Landroidx/lifecycle/L;

    :cond_1
    iget-object p1, p1, Landroidx/activity/j;->s:Landroidx/lifecycle/t;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/t;->f(Landroidx/lifecycle/q;)V

    return-void
.end method
