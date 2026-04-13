.class public abstract LJ/P;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/View;LJ/g;)LJ/g;
    .locals 1

    iget-object v0, p1, LJ/g;->a:LJ/f;

    invoke-interface {v0}, LJ/f;->n()Landroid/view/ContentInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, LJ/c;->l(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    return-object p1

    :cond_1
    new-instance p1, LJ/g;

    new-instance v0, Le4/c;

    invoke-direct {v0, p0}, Le4/c;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {p1, v0}, LJ/g;-><init>(LJ/f;)V

    return-object p1
.end method

.method public static c(Landroid/view/View;[Ljava/lang/String;LJ/s;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setOnReceiveContentListener([Ljava/lang/String;Landroid/view/OnReceiveContentListener;)V

    return-void

    :cond_0
    new-instance v0, LJ/Q;

    invoke-direct {v0, p2}, LJ/Q;-><init>(LJ/s;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setOnReceiveContentListener([Ljava/lang/String;Landroid/view/OnReceiveContentListener;)V

    return-void
.end method
