.class public final LT/W;
.super Ljava/lang/Object;

# interfaces
.implements LV4/g;


# instance fields
.field public final b:LT/W;

.field public final q:LT/I;


# direct methods
.method public constructor <init>(LT/W;LT/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/W;->b:LT/W;

    iput-object p2, p0, LT/W;->q:LT/I;

    return-void
.end method


# virtual methods
.method public final c(LT/I;)V
    .locals 1

    iget-object v0, p0, LT/W;->q:LT/I;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, LT/W;->b:LT/W;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LT/W;->c(LT/I;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()LV4/h;
    .locals 1

    sget-object v0, LT/V;->b:LT/V;

    return-object v0
.end method

.method public final h(LV4/h;)LV4/g;
    .locals 0

    invoke-static {p0, p1}, LC2/b;->u(LV4/g;LV4/h;)LV4/g;

    move-result-object p1

    return-object p1
.end method

.method public final r(LV4/h;)LV4/i;
    .locals 0

    invoke-static {p0, p1}, LC2/b;->C(LV4/g;LV4/h;)LV4/i;

    move-result-object p1

    return-object p1
.end method

.method public final s(LV4/i;)LV4/i;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LV4/j;->b:LV4/j;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LV4/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LV4/b;-><init>(I)V

    invoke-interface {p1, p0, v0}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV4/i;

    return-object p1
.end method
