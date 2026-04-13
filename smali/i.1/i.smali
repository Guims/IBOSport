.class public final Li/i;
.super LE5/l;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li/j;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Li/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/i;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Li/i;->b:Z

    iput p1, p0, Li/i;->c:I

    return-void
.end method

.method public constructor <init>(Lk/Z0;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Li/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/i;->d:Ljava/lang/Object;

    iput p2, p0, Li/i;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Li/i;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Li/i;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/i;->b:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Li/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Li/i;->d:Ljava/lang/Object;

    check-cast v0, Lk/Z0;

    iget-object v0, v0, Lk/Z0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Li/i;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/i;->b:Z

    iget-object v0, p0, Li/i;->d:Ljava/lang/Object;

    check-cast v0, Li/j;

    iget-object v0, v0, Li/j;->d:LJ/f0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LJ/f0;->d()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 3

    iget v0, p0, Li/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Li/i;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Li/i;->d:Ljava/lang/Object;

    check-cast v0, Lk/Z0;

    iget-object v0, v0, Lk/Z0;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Li/i;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    iget v0, p0, Li/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Li/i;->c:I

    iget-object v1, p0, Li/i;->d:Ljava/lang/Object;

    check-cast v1, Li/j;

    iget-object v2, v1, Li/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Li/j;->d:LJ/f0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LJ/f0;->e()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Li/i;->c:I

    iput-boolean v0, p0, Li/i;->b:Z

    iput-boolean v0, v1, Li/j;->e:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
