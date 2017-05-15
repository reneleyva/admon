package ciencias.recursosnaturales.sec

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class CuentaRol implements Serializable {

	private static final long serialVersionUID = 1

	Cuenta cuenta
	Rol rol

	CuentaRol(Cuenta u, Rol r) {
		this()
		cuenta = u
		rol = r
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof CuentaRol)) {
			return false
		}

		other.cuenta?.id == cuenta?.id && other.rol?.id == rol?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (cuenta) builder.append(cuenta.id)
		if (rol) builder.append(rol.id)
		builder.toHashCode()
	}

	static CuentaRol get(long cuentaId, long rolId) {
		criteriaFor(cuentaId, rolId).get()
	}

	static boolean exists(long cuentaId, long rolId) {
		criteriaFor(cuentaId, rolId).count()
	}

	private static DetachedCriteria criteriaFor(long cuentaId, long rolId) {
		CuentaRol.where {
			cuenta == Cuenta.load(cuentaId) &&
			rol == Rol.load(rolId)
		}
	}

	static CuentaRol create(Cuenta cuenta, Rol rol, boolean flush = false) {
		def instance = new CuentaRol(cuenta: cuenta, rol: rol)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Cuenta u, Rol r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = CuentaRol.where { cuenta == u && rol == r }.deleteAll()

		if (flush) { CuentaRol.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(Cuenta u, boolean flush = false) {
		if (u == null) return

		CuentaRol.where { cuenta == u }.deleteAll()

		if (flush) { CuentaRol.withSession { it.flush() } }
	}

	static void removeAll(Rol r, boolean flush = false) {
		if (r == null) return

		CuentaRol.where { rol == r }.deleteAll()

		if (flush) { CuentaRol.withSession { it.flush() } }
	}

	static constraints = {
		rol validator: { Rol r, CuentaRol ur ->
			if (ur.cuenta == null || ur.cuenta.id == null) return
			boolean existing = false
			CuentaRol.withNewSession {
				existing = CuentaRol.exists(ur.cuenta.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
            table 'cuentarol'
            id composite: ['cuenta', 'rol']
            version false
	}
}
