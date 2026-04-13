.class public final LS2/f;
.super Ljava/lang/Object;

# interfaces
.implements Lr4/b;


# instance fields
.field public b:I

.field public q:I

.field public r:Ljava/lang/Object;

.field public final s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LS2/f;->b:I

    iput v0, p0, LS2/f;->q:I

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, LS2/f;->r:Ljava/lang/Object;

    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, LS2/f;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, LS2/f;->t:Ljava/lang/Object;

    iput-object p1, p0, LS2/f;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LS2/f;->b:I

    iput v0, p0, LS2/f;->q:I

    iput-object p1, p0, LS2/f;->r:Ljava/lang/Object;

    new-array p1, p2, [J

    iput-object p1, p0, LS2/f;->s:Ljava/lang/Object;

    new-array p1, v0, [J

    iput-object p1, p0, LS2/f;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, p3}, Lio/realm/internal/Property;->a(Lio/realm/RealmFieldType;Z)I

    move-result p2

    const-string p3, ""

    invoke-static {p1, p3, p2, v0, v0}, Lio/realm/internal/Property;->nativeCreatePersistedProperty(Ljava/lang/String;Ljava/lang/String;IZZ)J

    move-result-wide p1

    iget-object p3, p0, LS2/f;->s:Ljava/lang/Object;

    check-cast p3, [J

    iget v0, p0, LS2/f;->b:I

    aput-wide p1, p3, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LS2/f;->b:I

    return-void
.end method

.method public b()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 6

    iget v0, p0, LS2/f;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, LS2/f;->q:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo;

    iget-object v2, p0, LS2/f;->r:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LS2/f;->s:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v3, p0, LS2/f;->t:Ljava/lang/Object;

    check-cast v3, [J

    iget-wide v4, v0, Lio/realm/internal/OsObjectSchemaInfo;->b:J

    invoke-static {v4, v5, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo;->a(J[J[J)V

    iput v1, p0, LS2/f;->b:I

    iput v1, p0, LS2/f;->q:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'OsObjectSchemaInfo.build()\' has been called before on this object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(LJ/B0;Ljava/util/List;)V
    .locals 1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LJ/n0;

    iget-object v0, p2, LJ/n0;->a:LJ/m0;

    invoke-virtual {v0}, LJ/m0;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget p1, p0, LS2/f;->q:I

    iget-object p2, p2, LJ/n0;->a:LJ/m0;

    invoke-virtual {p2}, LJ/m0;->b()F

    move-result p2

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, LN2/a;->c(IIF)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, LS2/f;->s:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, LS2/f;->s:Ljava/lang/Object;

    check-cast v0, Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/BaseObj;->destroy()V

    iget-object v0, p0, LS2/f;->r:Ljava/lang/Object;

    check-cast v0, Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    iget-object v0, p0, LS2/f;->t:Ljava/lang/Object;

    check-cast v0, Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public j(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, LS2/f;->s:Ljava/lang/Object;

    check-cast v0, Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, LS2/f;->r:Ljava/lang/Object;

    check-cast v1, Landroid/renderscript/RenderScript;

    invoke-static {v1, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, LS2/f;->q:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, LS2/f;->b:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, LS2/f;->t:Ljava/lang/Object;

    check-cast v3, Landroid/renderscript/Allocation;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    :cond_1
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, LS2/f;->t:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, LS2/f;->b:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, LS2/f;->q:I

    :goto_0
    invoke-virtual {v0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    iget-object p2, p0, LS2/f;->t:Ljava/lang/Object;

    check-cast p2, Landroid/renderscript/Allocation;

    invoke-virtual {v0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    iget-object p2, p0, LS2/f;->t:Ljava/lang/Object;

    check-cast p2, Landroid/renderscript/Allocation;

    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    return-object p1
.end method
