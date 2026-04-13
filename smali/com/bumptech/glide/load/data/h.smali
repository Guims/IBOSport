.class public final Lcom/bumptech/glide/load/data/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/data/g;


# static fields
.field public static final r:LS1/a;


# instance fields
.field public final synthetic b:I

.field public final q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LS1/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LS1/a;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/data/h;->r:LS1/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/data/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/data/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LL1/g;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/bumptech/glide/load/data/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LR1/y;

    invoke-direct {v0, p1, p2}, LR1/y;-><init>(Ljava/io/InputStream;LL1/g;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    const/high16 p1, 0x500000

    invoke-virtual {v0, p1}, LR1/y;->mark(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/load/data/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 0

    return-void
.end method

.method private final c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/data/h;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    check-cast v0, LR1/y;

    invoke-virtual {v0}, LR1/y;->b()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/data/h;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    check-cast v0, LR1/y;

    invoke-virtual {v0}, LR1/y;->reset()V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->rewind()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->rewind()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
