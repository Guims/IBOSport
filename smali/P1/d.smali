.class public final LP1/d;
.super Ljava/lang/Object;

# interfaces
.implements LO1/r;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LO1/r;

.field public final c:LO1/r;

.field public final d:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;LO1/r;LO1/r;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LP1/d;->a:Landroid/content/Context;

    iput-object p2, p0, LP1/d;->b:LO1/r;

    iput-object p3, p0, LP1/d;->c:LO1/r;

    iput-object p4, p0, LP1/d;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Landroid/net/Uri;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, La/a;->B(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;IILI1/j;)LO1/q;
    .locals 10

    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    new-instance p1, LO1/q;

    new-instance v9, Lc2/d;

    invoke-direct {v9, v4}, Lc2/d;-><init>(Ljava/lang/Object;)V

    new-instance v0, LP1/c;

    iget-object v3, p0, LP1/d;->c:LO1/r;

    iget-object v8, p0, LP1/d;->d:Ljava/lang/Class;

    iget-object v1, p0, LP1/d;->a:Landroid/content/Context;

    iget-object v2, p0, LP1/d;->b:LO1/r;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, LP1/c;-><init>(Landroid/content/Context;LO1/r;LO1/r;Landroid/net/Uri;IILI1/j;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v0}, LO1/q;-><init>(LI1/f;Lcom/bumptech/glide/load/data/e;)V

    return-object p1
.end method
