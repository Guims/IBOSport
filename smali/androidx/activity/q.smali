.class public final Landroidx/activity/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/activity/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/activity/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/activity/q;->a:Landroidx/activity/q;

    return-void
.end method


# virtual methods
.method public final a(Ld5/l;Ld5/l;Ld5/a;Ld5/a;)Landroid/window/OnBackInvokedCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld5/l;",
            "Ld5/l;",
            "Ld5/a;",
            "Ld5/a;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    const-string v0, "onBackStarted"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackProgressed"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackInvoked"

    invoke-static {p3, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackCancelled"

    invoke-static {p4, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/activity/p;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/activity/p;-><init>(Ld5/l;Ld5/l;Ld5/a;Ld5/a;)V

    return-object v0
.end method
