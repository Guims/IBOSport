.class public final LP1/b;
.super Ljava/lang/Object;

# interfaces
.implements LO1/s;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP1/b;->a:Landroid/content/Context;

    iput-object p2, p0, LP1/b;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(LO1/x;)LO1/r;
    .locals 4

    new-instance v0, LP1/d;

    const-class v1, Ljava/io/File;

    iget-object v2, p0, LP1/b;->b:Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, LO1/x;->b(Ljava/lang/Class;Ljava/lang/Class;)LO1/r;

    move-result-object v1

    const-class v3, Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, LO1/x;->b(Ljava/lang/Class;Ljava/lang/Class;)LO1/r;

    move-result-object p1

    iget-object v3, p0, LP1/b;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v1, p1, v2}, LP1/d;-><init>(Landroid/content/Context;LO1/r;LO1/r;Ljava/lang/Class;)V

    return-object v0
.end method
