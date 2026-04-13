.class public final Lg4/l;
.super Ljava/lang/Object;


# instance fields
.field public final a:LX3/b;


# direct methods
.method public constructor <init>(LX3/b;)V
    .locals 1

    const-string v0, "transportFactoryProvider"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/l;->a:LX3/b;

    return-void
.end method


# virtual methods
.method public final a(Lg4/H;)V
    .locals 4

    iget-object v0, p0, Lg4/l;->a:LX3/b;

    invoke-interface {v0}, LX3/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2/e;

    new-instance v1, Lg2/b;

    const-string v2, "json"

    invoke-direct {v1, v2}, Lg2/b;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroidx/media3/common/d;

    invoke-direct {v2, p0}, Landroidx/media3/common/d;-><init>(Lg4/l;)V

    check-cast v0, Lj2/p;

    const-string v3, "FIREBASE_APPQUALITY_SESSION"

    invoke-virtual {v0, v3, v1, v2}, Lj2/p;->a(Ljava/lang/String;Lg2/b;Lg2/d;)LG/c;

    move-result-object v0

    new-instance v1, Lg2/a;

    sget-object v2, Lg2/c;->b:Lg2/c;

    invoke-direct {v1, p1, v2}, Lg2/a;-><init>(Ljava/lang/Object;Lg2/c;)V

    new-instance p1, Landroidx/media3/common/d;

    const/16 v2, 0x17

    invoke-direct {p1, v2}, Landroidx/media3/common/d;-><init>(I)V

    invoke-virtual {v0, v1, p1}, LG/c;->a(Lg2/a;Lg2/f;)V

    return-void
.end method
