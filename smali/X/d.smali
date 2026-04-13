.class public final LX/d;
.super Ljava/lang/Object;

# interfaces
.implements LT/h;


# instance fields
.field public final a:LT/h;


# direct methods
.method public constructor <init>(LT/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/d;->a:LT/h;

    return-void
.end method


# virtual methods
.method public final a(Ld5/p;LX4/c;)Ljava/lang/Object;
    .locals 3

    new-instance v0, LX/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, LX/c;-><init>(Ld5/p;LV4/d;I)V

    iget-object p1, p0, LX/d;->a:LT/h;

    invoke-interface {p1, v0, p2}, LT/h;->a(Ld5/p;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getData()Lp5/b;
    .locals 1

    iget-object v0, p0, LX/d;->a:LT/h;

    invoke-interface {v0}, LT/h;->getData()Lp5/b;

    move-result-object v0

    return-object v0
.end method
