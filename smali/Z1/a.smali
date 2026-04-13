.class public abstract LZ1/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public A:Ld2/c;

.field public B:Ljava/lang/Class;

.field public C:Z

.field public D:Landroid/content/res/Resources$Theme;

.field public E:Z

.field public F:Z

.field public G:Z

.field public b:I

.field public q:LK1/m;

.field public r:Lcom/bumptech/glide/g;

.field public s:I

.field public t:I

.field public u:Z

.field public v:I

.field public w:I

.field public x:LI1/f;

.field public y:Z

.field public z:LI1/j;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LK1/m;->d:LK1/m;

    iput-object v0, p0, LZ1/a;->q:LK1/m;

    sget-object v0, Lcom/bumptech/glide/g;->r:Lcom/bumptech/glide/g;

    iput-object v0, p0, LZ1/a;->r:Lcom/bumptech/glide/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, LZ1/a;->u:Z

    const/4 v1, -0x1

    iput v1, p0, LZ1/a;->v:I

    iput v1, p0, LZ1/a;->w:I

    sget-object v1, Lc2/c;->b:Lc2/c;

    iput-object v1, p0, LZ1/a;->x:LI1/f;

    new-instance v1, LI1/j;

    invoke-direct {v1}, LI1/j;-><init>()V

    iput-object v1, p0, LZ1/a;->z:LI1/j;

    new-instance v1, Ld2/c;

    invoke-direct {v1}, Ln/j;-><init>()V

    iput-object v1, p0, LZ1/a;->A:Ld2/c;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, LZ1/a;->B:Ljava/lang/Class;

    iput-boolean v0, p0, LZ1/a;->F:Z

    return-void
.end method

.method public static g(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(LZ1/a;)LZ1/a;
    .locals 3

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LZ1/a;->a(LZ1/a;)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, LZ1/a;->b:I

    iget v0, p1, LZ1/a;->b:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, LZ1/a;->G:Z

    iput-boolean v0, p0, LZ1/a;->G:Z

    :cond_1
    iget v0, p1, LZ1/a;->b:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, LZ1/a;->q:LK1/m;

    iput-object v0, p0, LZ1/a;->q:LK1/m;

    :cond_2
    iget v0, p1, LZ1/a;->b:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, LZ1/a;->r:Lcom/bumptech/glide/g;

    iput-object v0, p0, LZ1/a;->r:Lcom/bumptech/glide/g;

    :cond_3
    iget v0, p1, LZ1/a;->b:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iput v1, p0, LZ1/a;->s:I

    iget v0, p0, LZ1/a;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, LZ1/a;->b:I

    :cond_4
    iget v0, p1, LZ1/a;->b:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, LZ1/a;->s:I

    iput v0, p0, LZ1/a;->s:I

    iget v0, p0, LZ1/a;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, LZ1/a;->b:I

    :cond_5
    iget v0, p1, LZ1/a;->b:I

    const/16 v2, 0x40

    invoke-static {v0, v2}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v1, p0, LZ1/a;->t:I

    iget v0, p0, LZ1/a;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, LZ1/a;->b:I

    :cond_6
    iget v0, p1, LZ1/a;->b:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, LZ1/a;->t:I

    iput v0, p0, LZ1/a;->t:I

    iget v0, p0, LZ1/a;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, LZ1/a;->b:I

    :cond_7
    iget v0, p1, LZ1/a;->b:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p1, LZ1/a;->u:Z

    iput-boolean v0, p0, LZ1/a;->u:Z

    :cond_8
    iget v0, p1, LZ1/a;->b:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, LZ1/a;->w:I

    iput v0, p0, LZ1/a;->w:I

    iget v0, p1, LZ1/a;->v:I

    iput v0, p0, LZ1/a;->v:I

    :cond_9
    iget v0, p1, LZ1/a;->b:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, LZ1/a;->x:LI1/f;

    iput-object v0, p0, LZ1/a;->x:LI1/f;

    :cond_a
    iget v0, p1, LZ1/a;->b:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, LZ1/a;->B:Ljava/lang/Class;

    iput-object v0, p0, LZ1/a;->B:Ljava/lang/Class;

    :cond_b
    iget v0, p1, LZ1/a;->b:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, LZ1/a;->b:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, LZ1/a;->b:I

    :cond_c
    iget v0, p1, LZ1/a;->b:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, LZ1/a;->b:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, LZ1/a;->b:I

    :cond_d
    iget v0, p1, LZ1/a;->b:I

    const v1, 0x8000

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, LZ1/a;->D:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, LZ1/a;->D:Landroid/content/res/Resources$Theme;

    :cond_e
    iget v0, p1, LZ1/a;->b:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p1, LZ1/a;->y:Z

    iput-boolean v0, p0, LZ1/a;->y:Z

    :cond_f
    iget v0, p1, LZ1/a;->b:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, LZ1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, LZ1/a;->A:Ld2/c;

    iget-object v1, p1, LZ1/a;->A:Ld2/c;

    invoke-virtual {v0, v1}, Ln/e;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, LZ1/a;->F:Z

    iput-boolean v0, p0, LZ1/a;->F:Z

    :cond_10
    iget v0, p0, LZ1/a;->b:I

    iget v1, p1, LZ1/a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, LZ1/a;->b:I

    iget-object v0, p0, LZ1/a;->z:LI1/j;

    iget-object p1, p1, LZ1/a;->z:LI1/j;

    iget-object v0, v0, LI1/j;->b:Ld2/c;

    iget-object p1, p1, LI1/j;->b:Ld2/c;

    invoke-virtual {v0, p1}, Ld2/c;->i(Ln/e;)V

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public b()LZ1/a;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ1/a;

    new-instance v1, LI1/j;

    invoke-direct {v1}, LI1/j;-><init>()V

    iput-object v1, v0, LZ1/a;->z:LI1/j;

    iget-object v2, p0, LZ1/a;->z:LI1/j;

    iget-object v1, v1, LI1/j;->b:Ld2/c;

    iget-object v2, v2, LI1/j;->b:Ld2/c;

    invoke-virtual {v1, v2}, Ld2/c;->i(Ln/e;)V

    new-instance v1, Ld2/c;

    invoke-direct {v1}, Ln/j;-><init>()V

    iput-object v1, v0, LZ1/a;->A:Ld2/c;

    iget-object v2, p0, LZ1/a;->A:Ld2/c;

    invoke-virtual {v1, v2}, Ln/e;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, LZ1/a;->C:Z

    iput-boolean v1, v0, LZ1/a;->E:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c(Ljava/lang/Class;)LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LZ1/a;->c(Ljava/lang/Class;)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, LZ1/a;->B:Ljava/lang/Class;

    iget p1, p0, LZ1/a;->b:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, LZ1/a;->b:I

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    return-object v0
.end method

.method public final d(LK1/m;)LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LZ1/a;->d(LK1/m;)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, LZ1/a;->q:LK1/m;

    iget p1, p0, LZ1/a;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, LZ1/a;->b:I

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final e(I)LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LZ1/a;->e(I)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, LZ1/a;->s:I

    iget p1, p0, LZ1/a;->b:I

    or-int/lit8 p1, p1, 0x20

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, LZ1/a;->b:I

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LZ1/a;

    if-eqz v0, :cond_0

    check-cast p1, LZ1/a;

    invoke-virtual {p0, p1}, LZ1/a;->f(LZ1/a;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(LZ1/a;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, LZ1/a;->s:I

    iget v1, p1, LZ1/a;->s:I

    if-ne v0, v1, :cond_0

    sget-object v0, Ld2/n;->a:[C

    iget v0, p0, LZ1/a;->t:I

    iget v1, p1, LZ1/a;->t:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, LZ1/a;->u:Z

    iget-boolean v1, p1, LZ1/a;->u:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, LZ1/a;->v:I

    iget v1, p1, LZ1/a;->v:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LZ1/a;->w:I

    iget v1, p1, LZ1/a;->w:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, LZ1/a;->y:Z

    iget-boolean v1, p1, LZ1/a;->y:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LZ1/a;->q:LK1/m;

    iget-object v1, p1, LZ1/a;->q:LK1/m;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZ1/a;->r:Lcom/bumptech/glide/g;

    iget-object v1, p1, LZ1/a;->r:Lcom/bumptech/glide/g;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LZ1/a;->z:LI1/j;

    iget-object v1, p1, LZ1/a;->z:LI1/j;

    invoke-virtual {v0, v1}, LI1/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZ1/a;->A:Ld2/c;

    iget-object v1, p1, LZ1/a;->A:Ld2/c;

    invoke-virtual {v0, v1}, Ln/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZ1/a;->B:Ljava/lang/Class;

    iget-object v1, p1, LZ1/a;->B:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZ1/a;->x:LI1/f;

    iget-object v1, p1, LZ1/a;->x:LI1/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZ1/a;->D:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, LZ1/a;->D:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p1}, Ld2/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(LR1/p;LR1/f;)LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LZ1/a;->h(LR1/p;LR1/f;)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, LR1/p;->g:LI1/i;

    invoke-virtual {p0, v0, p1}, LZ1/a;->n(LI1/i;Ljava/lang/Object;)LZ1/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, LZ1/a;->r(LI1/n;Z)LZ1/a;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Ld2/n;->a:[C

    const/16 v0, 0x11

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {v1, v0}, Ld2/n;->g(II)I

    move-result v0

    iget v1, p0, LZ1/a;->s:I

    invoke-static {v1, v0}, Ld2/n;->g(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget v2, p0, LZ1/a;->t:I

    invoke-static {v2, v0}, Ld2/n;->g(II)I

    move-result v0

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ld2/n;->g(II)I

    move-result v0

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, LZ1/a;->u:Z

    invoke-static {v1, v0}, Ld2/n;->g(II)I

    move-result v0

    iget v1, p0, LZ1/a;->v:I

    invoke-static {v1, v0}, Ld2/n;->g(II)I

    move-result v0

    iget v1, p0, LZ1/a;->w:I

    invoke-static {v1, v0}, Ld2/n;->g(II)I

    move-result v0

    iget-boolean v1, p0, LZ1/a;->y:Z

    invoke-static {v1, v0}, Ld2/n;->g(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ld2/n;->g(II)I

    move-result v0

    invoke-static {v2, v0}, Ld2/n;->g(II)I

    move-result v0

    invoke-static {v2, v0}, Ld2/n;->g(II)I

    move-result v0

    iget-object v1, p0, LZ1/a;->q:LK1/m;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, LZ1/a;->r:Lcom/bumptech/glide/g;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, LZ1/a;->z:LI1/j;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, LZ1/a;->A:Ld2/c;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, LZ1/a;->B:Ljava/lang/Class;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, LZ1/a;->x:LI1/f;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, LZ1/a;->D:Landroid/content/res/Resources$Theme;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i(II)LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LZ1/a;->i(II)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, LZ1/a;->w:I

    iput p2, p0, LZ1/a;->v:I

    iget p1, p0, LZ1/a;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, LZ1/a;->b:I

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final j(I)LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LZ1/a;->j(I)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, LZ1/a;->t:I

    iget p1, p0, LZ1/a;->b:I

    or-int/lit16 p1, p1, 0x80

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, LZ1/a;->b:I

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final k()LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0}, LZ1/a;->k()LZ1/a;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/bumptech/glide/g;->s:Lcom/bumptech/glide/g;

    iput-object v0, p0, LZ1/a;->r:Lcom/bumptech/glide/g;

    iget v0, p0, LZ1/a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, LZ1/a;->b:I

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final l(LI1/i;)LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LZ1/a;->l(LI1/i;)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, LZ1/a;->z:LI1/j;

    iget-object v0, v0, LI1/j;->b:Ld2/c;

    invoke-virtual {v0, p1}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final m()V
    .locals 2

    iget-boolean v0, p0, LZ1/a;->C:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(LI1/i;Ljava/lang/Object;)LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LZ1/a;->n(LI1/i;Ljava/lang/Object;)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Ld2/f;->b(Ljava/lang/Object;)V

    invoke-static {p2}, Ld2/f;->b(Ljava/lang/Object;)V

    iget-object v0, p0, LZ1/a;->z:LI1/j;

    iget-object v0, v0, LI1/j;->b:Ld2/c;

    invoke-virtual {v0, p1, p2}, Ld2/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final o(LI1/f;)LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LZ1/a;->o(LI1/f;)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, LZ1/a;->x:LI1/f;

    iget p1, p0, LZ1/a;->b:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, LZ1/a;->b:I

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final p()LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0}, LZ1/a;->p()LZ1/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LZ1/a;->u:Z

    iget v0, p0, LZ1/a;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, LZ1/a;->b:I

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final q(Landroid/content/res/Resources$Theme;)LZ1/a;
    .locals 2

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LZ1/a;->q(Landroid/content/res/Resources$Theme;)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, LZ1/a;->D:Landroid/content/res/Resources$Theme;

    if-eqz p1, :cond_1

    iget v0, p0, LZ1/a;->b:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, LZ1/a;->b:I

    sget-object v0, LT1/c;->b:LI1/i;

    invoke-virtual {p0, v0, p1}, LZ1/a;->n(LI1/i;Ljava/lang/Object;)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_1
    iget p1, p0, LZ1/a;->b:I

    const v0, -0x8001

    and-int/2addr p1, v0

    iput p1, p0, LZ1/a;->b:I

    sget-object p1, LT1/c;->b:LI1/i;

    invoke-virtual {p0, p1}, LZ1/a;->l(LI1/i;)LZ1/a;

    move-result-object p1

    return-object p1
.end method

.method public final r(LI1/n;Z)LZ1/a;
    .locals 2

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LZ1/a;->r(LI1/n;Z)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LR1/u;

    invoke-direct {v0, p1, p2}, LR1/u;-><init>(LI1/n;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, LZ1/a;->t(Ljava/lang/Class;LI1/n;Z)LZ1/a;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, LZ1/a;->t(Ljava/lang/Class;LI1/n;Z)LZ1/a;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, LZ1/a;->t(Ljava/lang/Class;LI1/n;Z)LZ1/a;

    new-instance v0, LV1/c;

    invoke-direct {v0, p1}, LV1/c;-><init>(LI1/n;)V

    const-class p1, LV1/b;

    invoke-virtual {p0, p1, v0, p2}, LZ1/a;->t(Ljava/lang/Class;LI1/n;Z)LZ1/a;

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final s(LR1/k;)LZ1/a;
    .locals 2

    sget-object v0, LR1/p;->c:LR1/p;

    iget-boolean v1, p0, LZ1/a;->E:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LZ1/a;->s(LR1/k;)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, LR1/p;->g:LI1/i;

    invoke-virtual {p0, v1, v0}, LZ1/a;->n(LI1/i;Ljava/lang/Object;)LZ1/a;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LZ1/a;->r(LI1/n;Z)LZ1/a;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Class;LI1/n;Z)LZ1/a;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LZ1/a;->t(Ljava/lang/Class;LI1/n;Z)LZ1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Ld2/f;->b(Ljava/lang/Object;)V

    iget-object v0, p0, LZ1/a;->A:Ld2/c;

    invoke-virtual {v0, p1, p2}, Ld2/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, LZ1/a;->b:I

    const p2, 0x10800

    or-int/2addr p2, p1

    iput p2, p0, LZ1/a;->b:I

    const/4 p2, 0x0

    iput-boolean p2, p0, LZ1/a;->F:Z

    if-eqz p3, :cond_1

    const p2, 0x30800

    or-int/2addr p1, p2

    iput p1, p0, LZ1/a;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LZ1/a;->y:Z

    :cond_1
    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final u()LZ1/a;
    .locals 2

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    invoke-virtual {v0}, LZ1/a;->u()LZ1/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LZ1/a;->G:Z

    iget v0, p0, LZ1/a;->b:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, LZ1/a;->b:I

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method
