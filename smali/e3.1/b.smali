.class public final Le3/b;
.super LA/b;


# instance fields
.field public final synthetic h:LE5/l;

.field public final synthetic i:Le3/d;


# direct methods
.method public constructor <init>(Le3/d;LE5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/b;->i:Le3/d;

    iput-object p2, p0, Le3/b;->h:LE5/l;

    return-void
.end method


# virtual methods
.method public final g(I)V
    .locals 2

    iget-object v0, p0, Le3/b;->i:Le3/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le3/d;->m:Z

    iget-object v0, p0, Le3/b;->h:LE5/l;

    invoke-virtual {v0, p1}, LE5/l;->y(I)V

    return-void
.end method

.method public final h(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Le3/b;->i:Le3/d;

    iget v1, v0, Le3/d;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Le3/d;->n:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, Le3/d;->m:Z

    iget-object p1, v0, Le3/d;->n:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object v1, p0, Le3/b;->h:LE5/l;

    invoke-virtual {v1, p1, v0}, LE5/l;->z(Landroid/graphics/Typeface;Z)V

    return-void
.end method
