.class public final LJ/Q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# instance fields
.field public final a:LJ/s;


# direct methods
.method public constructor <init>(LJ/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/Q;->a:LJ/s;

    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    new-instance v0, LJ/g;

    new-instance v1, Le4/c;

    invoke-direct {v1, p2}, Le4/c;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, LJ/g;-><init>(LJ/f;)V

    iget-object v1, p0, LJ/Q;->a:LJ/s;

    check-cast v1, LP/r;

    invoke-virtual {v1, p1, v0}, LP/r;->a(Landroid/view/View;LJ/g;)LJ/g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p2

    :cond_1
    iget-object p1, p1, LJ/g;->a:LJ/f;

    invoke-interface {p1}, LJ/f;->n()Landroid/view/ContentInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LJ/c;->l(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    return-object p1
.end method
