.class public final LV1/c;
.super Ljava/lang/Object;

# interfaces
.implements LI1/n;


# instance fields
.field public final b:LI1/n;


# direct methods
.method public constructor <init>(LI1/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LV1/c;->b:LI1/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, LV1/c;->b:LI1/n;

    invoke-interface {v0, p1}, LI1/f;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final b(Landroid/content/Context;LK1/D;II)LK1/D;
    .locals 4

    invoke-interface {p2}, LK1/D;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV1/b;

    invoke-static {p1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v1

    iget-object v1, v1, Lcom/bumptech/glide/b;->b:LL1/b;

    iget-object v2, v0, LV1/b;->b:LA1/f;

    iget-object v2, v2, LA1/f;->b:Ljava/lang/Object;

    check-cast v2, LV1/g;

    iget-object v2, v2, LV1/g;->l:Landroid/graphics/Bitmap;

    new-instance v3, LR1/e;

    invoke-direct {v3, v1, v2}, LR1/e;-><init>(LL1/b;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, LV1/c;->b:LI1/n;

    invoke-interface {v1, p1, v3, p3, p4}, LI1/n;->b(Landroid/content/Context;LK1/D;II)LK1/D;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {v3}, LR1/e;->a()V

    :cond_0
    invoke-interface {p1}, LK1/D;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, v0, LV1/b;->b:LA1/f;

    iget-object p3, p3, LA1/f;->b:Ljava/lang/Object;

    check-cast p3, LV1/g;

    invoke-virtual {p3, v1, p1}, LV1/g;->c(LI1/n;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LV1/c;

    if-eqz v0, :cond_0

    check-cast p1, LV1/c;

    iget-object v0, p0, LV1/c;->b:LI1/n;

    iget-object p1, p1, LV1/c;->b:LI1/n;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LV1/c;->b:LI1/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
