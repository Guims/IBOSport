.class public final Lg4/E;
.super Ljava/lang/Object;


# instance fields
.field public final a:LV4/i;

.field public final b:LT/h;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:LY1/c;


# direct methods
.method public constructor <init>(LV4/i;LT/h;)V
    .locals 4

    const-string v0, "backgroundDispatcher"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataStore"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/E;->a:LV4/i;

    iput-object p2, p0, Lg4/E;->b:LT/h;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lg4/E;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p2}, LT/h;->getData()Lp5/b;

    move-result-object p2

    new-instance v0, Lg4/C;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LX4/g;-><init>(ILV4/d;)V

    new-instance v1, LY1/c;

    const/16 v3, 0x1c

    invoke-direct {v1, p2, v3, v0}, LY1/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p2, LY1/c;

    const/16 v0, 0xf

    invoke-direct {p2, v1, v0, p0}, LY1/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object p2, p0, Lg4/E;->d:LY1/c;

    invoke-static {p1}, Lm5/w;->a(LV4/i;)Lr5/e;

    move-result-object p1

    new-instance p2, Lg4/B;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v2, v0}, Lg4/B;-><init>(Ljava/lang/Object;LV4/d;I)V

    invoke-static {p1, p2}, Lm5/w;->g(Lm5/u;Ld5/p;)Lm5/f0;

    return-void
.end method
