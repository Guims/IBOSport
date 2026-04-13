.class public final Lj0/b;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;

.field public static final E:Ljava/lang/String;

.field public static final F:Ljava/lang/String;

.field public static final G:Ljava/lang/String;

.field public static final H:Ljava/lang/String;

.field public static final I:Ljava/lang/String;

.field public static final J:Ljava/lang/String;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/Layout$Alignment;

.field public final c:Landroid/text/Layout$Alignment;

.field public final d:Landroid/graphics/Bitmap;

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:F

.field public final i:I

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:F

.field public final p:I

.field public final q:F


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v1, ""

    new-instance v0, Lj0/b;

    const/4 v2, 0x0

    const v5, -0x800001

    const/high16 v6, -0x80000000

    const/4 v14, 0x0

    const/high16 v15, -0x1000000

    const/16 v17, 0x0

    move-object v3, v2

    move-object v4, v2

    move v7, v6

    move v8, v5

    move v9, v6

    move v10, v6

    move v11, v5

    move v12, v5

    move v13, v5

    move/from16 v16, v6

    invoke-direct/range {v0 .. v17}, Lj0/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    sget v0, Lk0/C;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->r:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->s:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->t:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->u:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->v:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->w:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->x:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->y:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->z:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->A:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->B:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->C:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->D:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->E:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->F:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->G:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->H:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->I:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/b;->J:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    if-nez p4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    :goto_1
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lj0/b;->a:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj0/b;->a:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lj0/b;->a:Ljava/lang/CharSequence;

    :goto_2
    iput-object p2, p0, Lj0/b;->b:Landroid/text/Layout$Alignment;

    iput-object p3, p0, Lj0/b;->c:Landroid/text/Layout$Alignment;

    iput-object p4, p0, Lj0/b;->d:Landroid/graphics/Bitmap;

    iput p5, p0, Lj0/b;->e:F

    iput p6, p0, Lj0/b;->f:I

    iput p7, p0, Lj0/b;->g:I

    iput p8, p0, Lj0/b;->h:F

    iput p9, p0, Lj0/b;->i:I

    iput p12, p0, Lj0/b;->j:F

    iput p13, p0, Lj0/b;->k:F

    iput-boolean p14, p0, Lj0/b;->l:Z

    move/from16 p1, p15

    iput p1, p0, Lj0/b;->m:I

    iput p10, p0, Lj0/b;->n:I

    iput p11, p0, Lj0/b;->o:F

    move/from16 p1, p16

    iput p1, p0, Lj0/b;->p:I

    move/from16 p1, p17

    iput p1, p0, Lj0/b;->q:F

    return-void
.end method


# virtual methods
.method public final a()Lj0/a;
    .locals 2

    new-instance v0, Lj0/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lj0/b;->a:Ljava/lang/CharSequence;

    iput-object v1, v0, Lj0/a;->a:Ljava/lang/CharSequence;

    iget-object v1, p0, Lj0/b;->d:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lj0/a;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lj0/b;->b:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Lj0/a;->c:Landroid/text/Layout$Alignment;

    iget-object v1, p0, Lj0/b;->c:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Lj0/a;->d:Landroid/text/Layout$Alignment;

    iget v1, p0, Lj0/b;->e:F

    iput v1, v0, Lj0/a;->e:F

    iget v1, p0, Lj0/b;->f:I

    iput v1, v0, Lj0/a;->f:I

    iget v1, p0, Lj0/b;->g:I

    iput v1, v0, Lj0/a;->g:I

    iget v1, p0, Lj0/b;->h:F

    iput v1, v0, Lj0/a;->h:F

    iget v1, p0, Lj0/b;->i:I

    iput v1, v0, Lj0/a;->i:I

    iget v1, p0, Lj0/b;->n:I

    iput v1, v0, Lj0/a;->j:I

    iget v1, p0, Lj0/b;->o:F

    iput v1, v0, Lj0/a;->k:F

    iget v1, p0, Lj0/b;->j:F

    iput v1, v0, Lj0/a;->l:F

    iget v1, p0, Lj0/b;->k:F

    iput v1, v0, Lj0/a;->m:F

    iget-boolean v1, p0, Lj0/b;->l:Z

    iput-boolean v1, v0, Lj0/a;->n:Z

    iget v1, p0, Lj0/b;->m:I

    iput v1, v0, Lj0/a;->o:I

    iget v1, p0, Lj0/b;->p:I

    iput v1, v0, Lj0/a;->p:I

    iget v1, p0, Lj0/b;->q:F

    iput v1, v0, Lj0/a;->q:F

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lj0/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lj0/b;

    iget-object v2, p1, Lj0/b;->d:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lj0/b;->a:Ljava/lang/CharSequence;

    iget-object v4, p1, Lj0/b;->a:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lj0/b;->b:Landroid/text/Layout$Alignment;

    iget-object v4, p1, Lj0/b;->b:Landroid/text/Layout$Alignment;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lj0/b;->c:Landroid/text/Layout$Alignment;

    iget-object v4, p1, Lj0/b;->c:Landroid/text/Layout$Alignment;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lj0/b;->d:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget v2, p0, Lj0/b;->e:F

    iget v3, p1, Lj0/b;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lj0/b;->f:I

    iget v3, p1, Lj0/b;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lj0/b;->g:I

    iget v3, p1, Lj0/b;->g:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lj0/b;->h:F

    iget v3, p1, Lj0/b;->h:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lj0/b;->i:I

    iget v3, p1, Lj0/b;->i:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lj0/b;->j:F

    iget v3, p1, Lj0/b;->j:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lj0/b;->k:F

    iget v3, p1, Lj0/b;->k:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lj0/b;->l:Z

    iget-boolean v3, p1, Lj0/b;->l:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lj0/b;->m:I

    iget v3, p1, Lj0/b;->m:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lj0/b;->n:I

    iget v3, p1, Lj0/b;->n:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lj0/b;->o:F

    iget v3, p1, Lj0/b;->o:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lj0/b;->p:I

    iget v3, p1, Lj0/b;->p:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lj0/b;->q:F

    iget p1, p1, Lj0/b;->q:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lj0/b;->e:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v1, v0, Lj0/b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Lj0/b;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Lj0/b;->h:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v1, v0, Lj0/b;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Lj0/b;->j:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget v1, v0, Lj0/b;->k:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-boolean v1, v0, Lj0/b;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget v1, v0, Lj0/b;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Lj0/b;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Lj0/b;->o:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    iget v1, v0, Lj0/b;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Lj0/b;->q:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    iget-object v2, v0, Lj0/b;->a:Ljava/lang/CharSequence;

    iget-object v3, v0, Lj0/b;->b:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lj0/b;->c:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lj0/b;->d:Landroid/graphics/Bitmap;

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method
