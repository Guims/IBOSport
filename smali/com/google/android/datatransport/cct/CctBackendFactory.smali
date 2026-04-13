.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lk2/c;)Lk2/e;
    .locals 3

    new-instance v0, Lh2/c;

    check-cast p1, Lk2/b;

    iget-object v1, p1, Lk2/b;->a:Landroid/content/Context;

    iget-object v2, p1, Lk2/b;->b:Ls2/a;

    iget-object p1, p1, Lk2/b;->c:Ls2/a;

    invoke-direct {v0, v1, v2, p1}, Lh2/c;-><init>(Landroid/content/Context;Ls2/a;Ls2/a;)V

    return-object v0
.end method
