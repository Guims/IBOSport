.class public final Lx2/g;
.super Ly2/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx2/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final q:Z

.field public final r:Z

.field public final s:I

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv2/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lv2/h;-><init>(I)V

    sput-object v0, Lx2/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx2/g;->b:I

    iput-boolean p4, p0, Lx2/g;->q:Z

    iput-boolean p5, p0, Lx2/g;->r:Z

    iput p2, p0, Lx2/g;->s:I

    iput p3, p0, Lx2/g;->t:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, LE2/g;->O(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget v0, p0, Lx2/g;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lx2/g;->q:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    invoke-static {p1, v0, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lx2/g;->r:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v1, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget v0, p0, Lx2/g;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x5

    invoke-static {p1, v0, v1}, LE2/g;->R(Landroid/os/Parcel;II)V

    iget v0, p0, Lx2/g;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, LE2/g;->Q(Landroid/os/Parcel;I)V

    return-void
.end method
