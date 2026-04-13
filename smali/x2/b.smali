.class public final Lx2/b;
.super Ly2/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx2/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lx2/g;

.field public final q:Z

.field public final r:Z

.field public final s:[I

.field public final t:I

.field public final u:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv2/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lv2/h;-><init>(I)V

    sput-object v0, Lx2/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lx2/g;ZZ[II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/b;->b:Lx2/g;

    iput-boolean p2, p0, Lx2/b;->q:Z

    iput-boolean p3, p0, Lx2/b;->r:Z

    iput-object p4, p0, Lx2/b;->s:[I

    iput p5, p0, Lx2/b;->t:I

    iput-object p6, p0, Lx2/b;->u:[I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lx2/b;->b:Lx2/g;

    invoke-static {p1, v1, v2, p2}, LE2/g;->L(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x2

    const/4 v1, 0x4

    invoke-static {p1, p2, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lx2/b;->q:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x3

    invoke-static {p1, p2, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lx2/b;->r:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lx2/b;->s:[I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, v2}, LE2/g;->Q(Landroid/os/Parcel;I)V

    :goto_0
    const/4 p2, 0x5

    invoke-static {p1, p2, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget p2, p0, Lx2/b;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lx2/b;->u:[I

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    invoke-static {p1, v1}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, v1}, LE2/g;->Q(Landroid/os/Parcel;I)V

    :goto_1
    invoke-static {p1, v0}, LE2/g;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
