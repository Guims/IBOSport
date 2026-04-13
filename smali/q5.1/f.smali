.class public final Lq5/f;
.super Ljava/lang/Object;

# interfaces
.implements LV4/i;


# instance fields
.field public final b:Ljava/lang/Throwable;

.field public final synthetic q:LV4/i;


# direct methods
.method public constructor <init>(LV4/i;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq5/f;->b:Ljava/lang/Throwable;

    iput-object p1, p0, Lq5/f;->q:LV4/i;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lq5/f;->q:LV4/i;

    invoke-interface {v0, p1, p2}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(LV4/h;)LV4/g;
    .locals 1

    iget-object v0, p0, Lq5/f;->q:LV4/i;

    invoke-interface {v0, p1}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object p1

    return-object p1
.end method

.method public final r(LV4/h;)LV4/i;
    .locals 1

    iget-object v0, p0, Lq5/f;->q:LV4/i;

    invoke-interface {v0, p1}, LV4/i;->r(LV4/h;)LV4/i;

    move-result-object p1

    return-object p1
.end method

.method public final s(LV4/i;)LV4/i;
    .locals 1

    iget-object v0, p0, Lq5/f;->q:LV4/i;

    invoke-interface {v0, p1}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object p1

    return-object p1
.end method
