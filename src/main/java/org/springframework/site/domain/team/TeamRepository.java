package org.springframework.site.domain.team;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TeamRepository extends JpaRepository<MemberProfile, Long> {
	MemberProfile findByMemberId(String memberId);
}